package controller;

import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.*;


public class BookAdministrator extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int authorID;
	private String authorName;
	private int age;
	private String country;
	
	private String isbn;
	private String title;
	private String publisher;
	private String publishDate;
	private double price;
	public int getAuthorID() {
		return authorID;
	}
	public void setAuthorID(int authorID) {
		this.authorID = authorID;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	private Set<String> titles;
	private ArrayList<Book> books;
	
	
	
	
	public Set<String> getTitles() {
		return titles;
	}
	public void setTitles(Set<String> titles) {
		this.titles = titles;
	}
	public ArrayList<Book> getBooks() {
		return books;
	}
	public void setBooks(ArrayList<Book> books) {
		this.books = books;
	}
	public String display() {
		books = DAO.getBooks();
		return SUCCESS;
	}
	public String remove() {
		DAO.removeBookByISBN(isbn);
		return SUCCESS;
	}
	
	public String queryByTitle(){
		Map<String, String> map = DAO.getBookAuthorInfoFromBookTitle(title);
		setIsbn(map.get("ISBN"));
		setTitle(map.get("Title"));
		setAuthorID(Integer.parseInt(map.get("AuthorID")));
		setPublisher(map.get("Publisher"));
		setPublishDate(map.get("PublishDate"));
		setPrice(Double.parseDouble(map.get("Price")));
		setAuthorName(map.get("AuthorName"));
		setAge(Integer.parseInt(map.get("Age")));
		setCountry(map.get("Country"));
		return SUCCESS;
	}
	
	public String queryByAuthorName() {
		titles=DAO.getTitlesFromAuthorsName(authorName);
		return SUCCESS;
	}
	
	public String edit() {
		authorName = new String("");
		publishDate = new String("");
		publisher = new String("");
		price = 0;
		ActionContext context = ActionContext.getContext();
		//System.out.println( (String)context.get("isbn"));
		System.out.println(isbn);
		context.getSession().put("isbn", isbn);
		return SUCCESS;
	}
	public String update() throws Exception{
//		ActionContext context = ActionContext.getContext();
//		isbn = (String) context.getSession().get("isbn");
//		System.out.println(isbn);
//		
//		try {
//			DAO.updateBookInfoSelectedByISBN(isbn, authorName, publisher, publishDate, price);
//			return SUCCESS;
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			context.getSession().put("tip", "Invalid Book Info.");
//			e.printStackTrace();
//			return ERROR;
//		}
//		
		ActionContext context = ActionContext.getContext();
		isbn = (String) context.getSession().get("isbn");
		System.out.println(isbn);
		
		try {
			DAO.updateBookInfoSelectedByISBN(isbn, authorName, publisher, publishDate, price);
		} finally {
			;
		}
		return SUCCESS;
	}
	
	public String addBook() {
		return SUCCESS;
	}
	public String addAuthor() {
		return SUCCESS;
	}
	
	public String store() {
		
		ActionContext context = ActionContext.getContext();
		if (isbn != null) {//addBook
			authorID = DAO.getAuthorIDByName(authorName);
			
			if (authorID == -1) {
				context.getSession().put("tip",
						"The author doesn't exist in the database, please add the author before adding the book.");
				return ERROR;
			} else {

				try {
					DAO.addNewBook(isbn, title, authorID, publisher, publishDate, price);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("book info error");
					context.getSession().put("tip", "Invalid Book Info.");
					return ERROR;
				}

				return SUCCESS;
			} 
		} else { //addAuthor
			try {
				DAO.addNewAuthor(authorName, age, country);
				return SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
				context.getSession().put("tip", "Invalid Author Info");
				return ERROR;
			}
		}
		
	}
}
