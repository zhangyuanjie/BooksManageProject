package com.six.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.six.entity.Books;
import com.six.service.BooksService;

@Controller
public class BooksController {

	@Autowired
	private BooksService bs;
	
	@RequestMapping("/borrowBook.do")
	public String borrowBook(int id, int bid, Model model, HttpServletRequest request){
		System.out.println(id+" "+bid);
		bs.borrowBook(id, bid);
		int uid = (Integer)request.getSession().getAttribute("id");
		System.out.println("uid"+uid);
		return "forward:/showUser.do?id="+uid;
	}
	
	@RequestMapping("/returnBooks")
	public String returnBook(int bid, HttpServletRequest request){
		int uid = (Integer)request.getSession().getAttribute("id");
		System.out.println("uid"+uid);
		bs.returnBook(bid);
		return "forward:/showUser.do?id="+uid;
	}
	
	@RequestMapping("/selectBooksByName")
	public String selectBooksByName(Books book,Model model){
		String name = book.getName();
		System.out.println("书名："+name);
		System.out.println(book);
		List<Books> books = bs.selectBooksByName(book);
		if(books.size() ==0){
			model.addAttribute("msg", "尚未查到相关书籍，可在下方输入详细信息进一步查阅");
		}else {
			model.addAttribute("bList", books);
		}
		return "result";
	}
	
	@RequestMapping("/deleteBook.do")
	public String deleteBook(int bid, Model model, HttpServletRequest request){
		int id = (Integer)request.getSession().getAttribute("id");
		bs.deleteBook(bid);
		return "forward:/showUser.do?id="+id;
	}
	
	@RequestMapping("/selectBooksByKey")
	public String selectBooksByKey(Books book, Model model){
		
		List<Books> books = bs.selectBooksByKey(book);
		if(books.size() ==0){
			model.addAttribute("msg", "尚未查到相关书籍，可在下方输入详细信息进一步查阅");
		}else {
			model.addAttribute("bList", books);
		}
		return "result";
	}
}
