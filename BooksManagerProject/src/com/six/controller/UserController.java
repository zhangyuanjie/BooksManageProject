package com.six.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.six.entity.Books;
import com.six.entity.User;
import com.six.service.BooksService;
import com.six.service.UserService;
@Controller
public class UserController {
	

	@Autowired
	private UserService us;
	
	@Autowired
	private BooksService bs;
	
	@RequestMapping("/login.do")
	public String checkUser(User user, Model model, HttpServletRequest request){
		String name = user.getName();
		int id = 0;
		if(us.selectUserByName(name)!=null){		//判断用户是否存在
			User check_user = us.checkUser(user);
			if (check_user!=null){					//判断输入密码是否正确
				id = check_user.getId();
				request.getSession().setAttribute("user",check_user);
				request.getSession().setAttribute("id",id);
				return "index";
			}else {
				model.addAttribute("msg", "密码输入错误，请重新输入！");
			}
		}else{
			model.addAttribute("msg", "该用户不存在，请重新输入！");
		}
				
		return "forward:/login.jsp";
	}
	
	@RequestMapping("/showRegist.do")
	public String showRegist(){
		return "regist";
	}
	
	@RequestMapping("/showIndex.do")
	public String showIndex(){
		return "index";
	}
	
	
	
	@RequestMapping("/regist.do")
	public String regist(User user, Model model){
		String name = user.getName();
		if(us.selectUserByName(name)!=null){
			System.out.println("该用户已存在");
			model.addAttribute("msg", "该用户已存在！");
		}
		else {
			int flag = us.insertUser(user);
			if(flag == 1){
				System.out.println("注册成功");
				model.addAttribute("msg", "注册成功，可点击下方按钮返回登录界面登录");
			}
		}
		
		System.out.println(user.getName());
		return "regist";
	}
	
	@RequestMapping("/selectAllStudent")
	public String selectAllStudent(Model model){
		
		return null;
	}
	
	@RequestMapping("/selectUserById.do")
	public String selectUserById(int id, Model model){
		User showUser = us.selectUserById(id);
		System.out.println(showUser);
		model.addAttribute("user", showUser);
		return "showUser";
	}
	
	@RequestMapping("/deleteUserById.do")
	public String deleteUserById(int id, Model model, HttpServletRequest request){
		us.deleteUserById(id);
		System.out.println("id"+id);
		int uid = (Integer)request.getSession().getAttribute("id");
		System.out.println("uid"+uid);
		return "forward:/showUser.do?id="+uid;
	}
	
	@RequestMapping("/showUpdate.do")
	public String showUpdate(){
		return "updateUser";
	}
	
	@RequestMapping("/updateUser.do")
	public String updateUser(User user, Model model){
		us.updateUser(user);
		model.addAttribute("msg", "修改信息成功");
		return "updateUser";
	}
	
	@RequestMapping("/showUser.do")
	public String showUser(int id, Model model){
		System.out.println(id);
		User user = us.selectUserById(id);
		System.out.println(user);
		
		if(user.getState() == 1){
			List<User> users = us.selectAllStudent();
			System.out.println("users:"+users);
			if(users == null){
				model.addAttribute("msg2", "尚未有学生注册！");
			}else{
				model.addAttribute("uList", users);
			}
		}
		
		List<Books> books = bs.selectBooksById(id);
		System.out.println("books："+books);
		if(books.size() == 0){
			model.addAttribute("msg", "你尚未借阅任何书籍");
		}else{
			model.addAttribute("bList", books);
		}
		return "showUser";
	}
}
