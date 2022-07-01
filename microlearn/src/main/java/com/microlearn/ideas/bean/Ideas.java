package com.microlearn.ideas.bean;

public class Ideas {
int bookid, id;
String description,title,author;
boolean isdeleted;
public int getBookid() {
	return bookid;
}
public void setBookid(int bookid) {
	this.bookid = bookid;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public boolean isIsdeleted() {
	return isdeleted;
}
public void setIsdeleted(boolean isdeleted) {
	this.isdeleted = isdeleted;
}
}
