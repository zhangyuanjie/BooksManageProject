package com.six.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.six.entity.Books;

public interface BooksMapper {
	List<Books> selectAllBooks();
	List<Books> selectBooksById(int id);
	void borrowBook(@Param("id")int id, @Param("bid")int bid);
	void returnBook(int bid);
	List<Books> selectBooksByName(Books book);
	void deleteBook(int bid);
	List<Books> selectBooksByKey(Books book);
}
