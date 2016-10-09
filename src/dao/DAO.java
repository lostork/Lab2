package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import com.opensymphony.xwork2.ActionContext;
import validdatetest.*;
public class DAO {

	private static String url = new String("jdbc:mysql://localhost:3306/bookDB");
	//private static String url = new String("jdbc:mysql://mmrcehspavoo.rds.sae.sina.com.cn:10593/bookdb");
	
	//private static String url = new String("jdbc:mysql://uffdldhjtgwc.rds.sae.sina.com.cn:10352/bookdb");
	private static String userName = new String("root");
	private static String password = new String("15926487300");
	
	
	
	public static String getUrl() {
		return url;
	}

	public static void setUrl(String url) {
		DAO.url = url;
	}

	public static String getUserName() {
		return userName;
	}

	public static void setUserName(String userName) {
		DAO.userName = userName;
	}

	public static String getPassword() {
		return password;
	}

	public static void setPassword(String password) {
		DAO.password = password;
	}

	/**
	 * function 1 in Lab2 Guide Book.
	 * get Titles from author's name
	 * @param authorName
	 * @return
	 */
	public static Set<String> getTitlesFromAuthorsName(String authorName) {
		Set<String> TitleNames = new TreeSet<String>();
		
		try (Connection connection = getConnection()) {
			java.sql.Statement statement = connection.createStatement();
			try (ResultSet result = statement.executeQuery(
					"SELECT Title FROM Book WHERE AuthorID IN (SELECT AuthorID FROM Author WHERE AuthorName = '"+ 
					authorName +"');")) {
				while (result.next()) {
					TitleNames.add(result.getString(1));
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(TitleNames);
		return TitleNames; 
	}
	
	/**
	 * function 2 in Lab2 Guide Book.
	 * @param title
	 * @return Map<String,String> key-value pair ISBN,Title,book.AuthorID,
	 * 			Publisher,PublishDate,Price,AuthorName,Age,Country
	 */
	public static Map<String, String> getBookAuthorInfoFromBookTitle(String title) {
		Map<String, String> bookAuthorInfo = new HashMap<>();
		
		try (Connection connection = getConnection()) {
			java.sql.Statement statement = connection.createStatement();
			try (ResultSet result = statement.executeQuery(
					"select ISBN,Title,Book.AuthorID,Publisher,PublishDate,Price,AuthorName,Age,Country "+
					"from Book,Author " + 
					"where Title = '" + title + "' AND Author.AuthorID in (select AuthorID " + 
																			"from Book " +
																			"where Title = '"+ title +"');")) {
				if (result.next()) {
					bookAuthorInfo.put("ISBN", result.getString("ISBN"));
					bookAuthorInfo.put("Title", result.getString("Title"));
					bookAuthorInfo.put("AuthorID", result.getString("AuthorID"));
					bookAuthorInfo.put("Publisher", result.getString("Publisher"));
					bookAuthorInfo.put("PublishDate", result.getString("PublishDate"));
					bookAuthorInfo.put("Price", result.getString("Price"));
					bookAuthorInfo.put("AuthorName", result.getString("AuthorName"));
					bookAuthorInfo.put("Age", result.getString("Age"));
					bookAuthorInfo.put("Country", result.getString("Country"));
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(bookAuthorInfo);
		return bookAuthorInfo;
	}

	/**
	 * function 3 in Lab2 Guide Book.
	 * @param ISBN
	 */
	public static void removeBookByISBN(String ISBN) {
		try (Connection connection = getConnection()) {
			java.sql.Statement statement = connection.createStatement();
			int UpdateLineNumber = statement.executeUpdate("delete from Book " + 
									"where ISBN = '" + ISBN + "';");
			System.out.println(UpdateLineNumber);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * function 4 in Lab2 Guide Book.
	 * no test of whether the AuthorID is in the Author table.
	 * @param ISBN
	 * @param Title
	 * @param AuthorID
	 * @param Publisher
	 * @param PublishDate
	 * @param Price
	 */
	public static void addNewBook(String ISBN, String Title, int AuthorID, 
								String Publisher, String PublishDate, double Price)
								throws Exception{
		try (Connection connection = getConnection()) {
			java.sql.Statement statement = connection.createStatement();
			int UpdateLineNumber = statement.executeUpdate("insert into Book("+
															"ISBN,Title,AuthorID,Publisher,PublishDate,Price) " + 
															"values( " + 
															"'"+ ISBN + "'," + 
															"'" + Title + "'," +
															 + AuthorID + "," +
															"'" + Publisher + "'," +
															"'" + PublishDate + "'," +
															 + Price + ");" );
			
			System.out.println(UpdateLineNumber);
			
			
		} 
	}
	
	
	
	
	/**
	 * function 4 in Lab2 Guide Book.
	 * parameters not contain AuthorID, which is created automatily by auto_increment
	 * @param AuthorName
	 * @param Age
	 * @param Country
	 * @return lastAuthorID  if get ID fails, return -1;
	 */
	public static int  addNewAuthor( String AuthorName, int Age, String Country) throws Exception {
		int lastAuthorID = -1;
		try (Connection connection = getConnection()) {
			java.sql.Statement statement = connection.createStatement();
			int UpdateLineNumber = statement.executeUpdate("insert into Author("+
															"AuthorName,Age,Country) " + 
															"values( " +  
															"'" + AuthorName + "'," +
															 + Age + "," +
															"'" + Country + "');",
															Statement.RETURN_GENERATED_KEYS);
			
			ResultSet resultSet = statement.getGeneratedKeys();
			if (resultSet.next()) {
				lastAuthorID = resultSet.getInt(1);
			}
			System.out.println(UpdateLineNumber);
			System.out.println("lastAuthorID "+lastAuthorID);
			
		} 
		
		return lastAuthorID;
	}
	
	
	public static void updateBookInfoSelectedByISBN(String ISBN, String AuthorName, String Publisher, String PublishDate, double Price)
								throws Exception{
		
//		try (Connection connection = getConnection()) {
//			System.out.println(ISBN);
//			java.sql.Statement statement = connection.createStatement();
//			if (!AuthorName.equals("")) {		
//				int authorID = 0;
//				try (ResultSet result = statement.executeQuery("select AuthorID " + 
//																"from Author " + 
//																"where AuthorName = '" + AuthorName + "';")) {
//					
//					if (result.next()) {
//						authorID = result.getInt(1);
//					}
//				} 
//				if (authorID <= 0) {
//					throw new Exception("no author");
//				} else {
//					statement.executeUpdate("update Book " + 
//							"set AuthorID = " + authorID +
//							" where ISBN = '" + ISBN + "';");	
//					
//				}
//			}
//			
//			if (!Publisher.equals("")) {
//				statement.executeUpdate("update Book " + 
//										"set Publisher = '" + Publisher + "' " + 
//										"where ISBN = '" + ISBN + "';");
//			}
//			
//			if (!PublishDate.equals("")) {
//				statement.execute("update Book " + 
//										"set PublishDate = '" + PublishDate + "' " + 
//										"where ISBN = '" + ISBN + "';");
//			}
//			
//			if (Math.abs(Price) > 0.0001) {
//				statement.execute("update Book " + 
//						"set Price = " + Price + " " + 
//						"where ISBN = '" + ISBN + "';");
//			}
//			
//			
//			
//		}
			try (Connection connection = getConnection()) {
			System.out.println(ISBN);
			java.sql.Statement statement = connection.createStatement();
			
			
			int authorID = 0;
			
			try (ResultSet result = statement.executeQuery("select AuthorID " + 
															"from Author " + 
															"where AuthorName = '" + AuthorName + "';")) {
				
				if (result.next()) {
					authorID = result.getInt(1);
				} else {
					throw new Exception("no Author");
				}
			} 
			
			
			if (!ValidDateTest.valiDateTimeWithLongFormat(PublishDate)) {
				throw new Exception("Publish Date Invalid");
			}
			
			
			if (!PublishDate.equals("")) {
				statement.executeUpdate("update Book " + 
										"set PublishDate = '" + PublishDate + "' " + 
										"where ISBN = '" + ISBN + "';");
				
			}
			
			statement.executeUpdate("update Book " + 
					"set AuthorID = " + authorID +
					" where ISBN = '" + ISBN + "';");	
			
			
			
			
			if (!Publisher.equals("")) {
				statement.executeUpdate("update Book " + 
										"set Publisher = '" + Publisher + "' " + 
										"where ISBN = '" + ISBN + "';");
			}
			
			
			if (Math.abs(Price) > 0.0001) {
				statement.executeUpdate("update Book " + 
						"set Price = " + Price + " " + 
						"where ISBN = '" + ISBN + "';");
			}
			
			
			
		} 
		
	}
	
	public static ArrayList<Book> getBooks() {
		ActionContext context = ActionContext.getContext();
		ArrayList<Book> books = new ArrayList<Book>();
		try (Connection connection = getConnection()) {
			context.getSession().put("sqltip", "Success loading Mysql Driver!");
			java.sql.Statement statement = connection.createStatement();
			try (ResultSet result = statement.executeQuery(
					"select ISBN,Title,AuthorName,Price from Book,Author where Book.AuthorID = Author.AuthorID;")) {
				while (result.next()) {
					context.getSession().put("isbntip", result.getString("ISBN"));
					books.add(new Book(result.getString("ISBN"),
										result.getString("Title"),
										result.getString("AuthorName"),
										result.getDouble("Price")));
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		context.getSession().put("daotip", "getBooks success");
		return books;
	}
	
	
	
	/**
	 * -1 for no author using this name;
	 * @param authorName
	 * @return
	 */
	public static int getAuthorIDByName(String authorName) {
		
		int authorID = -1;
		try (Connection connection = getConnection()) {
			java.sql.Statement statement = connection.createStatement();
			try (ResultSet result = statement.executeQuery(
					"select AuthorID from Author where AuthorName = '" + authorName + "';")) {
				if (result.next()) {
					authorID = result.getInt(1);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(authorID);
		return authorID;
		
	}
	
	
	
	/**
	 * 
	 * @return
	 * @throws SQLException
	 */
	private static Connection getConnection() throws SQLException{
	      
		ActionContext context = ActionContext.getContext();
		try {
			Class.forName("com.mysql.jdbc.Driver");     //����MYSQL JDBC��������   
			//Class.forName("org.gjt.mm.mysql.Driver");
			System.out.println("Success loading Mysql Driver!");
//			context.getSession().put("sqltip", "Success loading Mysql Driver!");
		} catch (Exception e) {
			System.out.print("Error loading Mysql Driver!");
			context.getSession().put("sqltip", e.toString());
			e.printStackTrace();
			
		}
	
		return DriverManager.getConnection(url, userName, password);
	}
}



