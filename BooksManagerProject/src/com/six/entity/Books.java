package com.six.entity;

public class Books {
	private int bid;			//��id
	private String name;		//����
	private String author;		//����
	private String publisher;	//������
	private String family;		//���
	private int lend;			//�������
	private String location;
	private int id;
	
	
	public Books(){
	}

	
	public Books(int bid, String name, String author, String publisher, String family, int lend, String location, int id) {
		this.bid = bid;
		this.name = name;
		this.author = author;
		this.publisher = publisher;
		this.family = family;
		this.lend = lend;
		this.location = location;
		this.id = id;
	}

	
	public int getBid() {
		return bid;
	}


	public void setBid(int bid) {
		this.bid = bid;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getFamily() {
		return family;
	}

	public void setFamily(String family) {
		this.family = family;
	}

	public int getLend() {
		return lend;
	}

	public void setLend(int lend) {
		this.lend = lend;
	}

	
	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	@Override
	public String toString() {
		return "Books [name=" + name + ", author=" + author + ", publisher=" + publisher + ", family=" + family
				+ ", lend=" + lend + "]";
	}
	
	
	
}
