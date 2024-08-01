package com.bhumika.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bhumika.dao.CustomerDao;
import com.bhumika.model.Customer;



@Controller
public class HomeController 
{
	@Autowired
	Customer customer;
	@Autowired
	CustomerDao customerDao;
//home page
	
	@RequestMapping("/")
	public String homePage()
	{
		return "index";
	}
	
//Login Admin starts
	
	@RequestMapping("/login")
	
		public String login()
		{
			return "index";
		}
	
	@RequestMapping(path="/loginAdmin",method=RequestMethod.POST)
	public String loginPage(HttpServletRequest request)
	{
		String aemail=request.getParameter("aemail");
		String apassword=request.getParameter("apassword");
		
		if(aemail.equals("bhumika@gmail.com")&& apassword.equals("bhumika"))
		{
			return "dashboard";
		}
		else
		{
			return "error";
		}
	}
	
//add account
	
	@RequestMapping("/add")
	public String addAccount()
	{
		return "addAccount";
	}
	
	@RequestMapping(path="/addAccount",method=RequestMethod.POST)
	public String addCustomer(@ModelAttribute Customer customer,HttpServletRequest request)
	{
		System.out.println(customer);
		 int i=customerDao.addCustomer(customer); 
		 return "dashboard";
	}
//View all account
	@RequestMapping("/view")
	public String viewAccount(Model model)
	{
		List<Customer> customer=customerDao.viewAllCustomer();
		model.addAttribute("customerList",customer);
		return "viewAccount";
	}
//view one account	
	@RequestMapping("/viewOne")
	public String viewOneAccount()
	{
		return "viewOneAccount";
	}
	@RequestMapping(path="/viewOneAccount",method=RequestMethod.POST)
	public String displayOneAccount(Model model,HttpServletRequest request)
	{
		int ano=Integer.parseInt(request.getParameter("ano"));	
		 Customer vcustomer=customerDao.viewOneCustomer(ano); 
		model.addAttribute("customerList",vcustomer);
		return "displayOneAccount";
	}
	
//deposit	
	@RequestMapping("/deposite")
	public String depositeAmount()
	{
		return "deposite";
	}
	
	@RequestMapping(path="/depositAmount",method=RequestMethod.POST)
	public String depositAmount(HttpServletRequest request)
	{
		int ano=Integer.parseInt(request.getParameter("ano"));
		float amt=Float.parseFloat(request.getParameter("amt"));
		Customer vcust= customerDao.viewOneCustomer(ano);
		float balance=vcust.getCustBalance();
		balance+=amt;
		vcust.setCustBalance(balance);
		customerDao.depositeMoney(vcust);
		 return "dashboard";
	}
//withdraw	
	@RequestMapping("/withdraw")
	public String withdrawAmount()
	{
		return "withdraw";
	}
	@RequestMapping(path="/withdrawAmount",method=RequestMethod.POST)
	public String withdrawAmount(HttpServletRequest request)
	{
		int ano=Integer.parseInt(request.getParameter("ano"));
		float amt=Float.parseFloat(request.getParameter("amt"));
		Customer vcust= customerDao.viewOneCustomer(ano);
		float balance=vcust.getCustBalance();
		if(balance-amt>=0&&amt>0)
		{
		balance-=amt;
		vcust.setCustBalance(balance);
		customerDao.withdrawMoney(vcust);
		 return "dashboard";
		}
		else
		{
			return "error";
		}
	}
	
	
//dashboard
	
	@RequestMapping("/dash")
	public String dash()
	{
		return "dashboard";
	}
//delete account	
		@RequestMapping("/delete")
		public String deleteAccount(HttpServletRequest request)
		{
			int id=Integer.parseInt(request.getParameter("id"));
			Customer customer=customerDao.viewOneCustomer(id);	
			customerDao.deleteAccount(customer);
			return "redirect:/view";
		}
//transfer Amount	
		@RequestMapping("/transfer")
		public String transferAmount()
		{
			return "transaction";
		}
		
		@RequestMapping(path="/transferAmount",method=RequestMethod.POST)
		public String transferAmount(HttpServletRequest request)
		{
			int sno=Integer.parseInt(request.getParameter("sno"));
			int rno=Integer.parseInt(request.getParameter("rno"));
			float amt=Float.parseFloat(request.getParameter("amt"));
			Customer sender= customerDao.viewOneCustomer(sno);
			Customer receiver= customerDao.viewOneCustomer(rno);
			float sbalance=sender.getCustBalance();
			float rbalance=receiver.getCustBalance();
			sbalance-=amt;
			rbalance+=amt;
			sender.setCustBalance(sbalance);
			receiver.setCustBalance(rbalance);
			customerDao.transferAmount(sender);
			customerDao.transferAmount(receiver);
			return "dashboard";
		}

		
//update
		@RequestMapping("/update")
		public String updateAccount(HttpServletRequest request)
		{
			
			return "updateInfo";
		}
		@RequestMapping(path="/PassingId",method=RequestMethod.POST)
		public String PassingId(HttpServletRequest request)
		{
			int id=Integer.parseInt(request.getParameter("id"));
			String cname=request.getParameter("cname");
			String ccity=request.getParameter("ccity");
			String cmobile=request.getParameter("cmobile");
			Customer customer=customerDao.viewOneCustomer(id);
			customer.setCustName(cname);
			customer.setCustMob(cmobile);
			customer.setCustCity(ccity);
			customerDao.updateAll(customer);
			return "redirect:view";
		}
		

}
		

