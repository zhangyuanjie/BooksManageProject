package com.six.service;

import java.util.List;

import org.ietf.jgss.Oid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.BooksMapper;
import com.six.entity.Books;

@Service
public class BooksService {

	@Autowired
	private BooksMapper bm;
	
	public List<Books> selectAllBooks() {
		return bm.selectAllBooks();
	}
	
	public List<Books> selectBooksById(int id) {
		return bm.selectBooksById(id);
	}
	
	public void borrowBook(int id,int bid) {
		bm.borrowBook(id, bid);
	}
	
	public void returnBook(int bid) {
		bm.returnBook(bid);
	}
	
	public List<Books> selectBooksByName(Books books) {
		return bm.selectBooksByName(books);
	}
	
	public List<Books> selectBooksByKey(Books books) {
		return bm.selectBooksByKey(books);
	}
	
	public void deleteBook(int id) {
		bm.deleteBook(id);
	}
}
