package com.example.demo.controller;
	
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dto.Member;





 

@Controller

public class Form5Controller {

 

    @GetMapping("form5/register1")

    public String register1(Model model) {

        return "form5/register1";

    }

 

    @PostMapping("form5/register1")

    public String register1(Model model, HttpSession session, Member member)
    {

        String errorMsg = null;

        if (member.getUserid() == null || member.getUserid().length() == 0)

            errorMsg = "사용자 아이디를 입력하세요";

        else if (member.getName() == null || member.getName().length() == 0)

            errorMsg = "이름을 입력하세요";

        else if (member.getPassword1() == null || member.getPassword1().length() == 0)

            errorMsg = "비밀번호1을 입력하세요";

        else if (member.getPassword2() == null || member.getPassword2().length() == 0)

            errorMsg = "비밀번호2를 입력하세요";

        else if (member.getPassword1().equals(member.getPassword2()) == false)

            errorMsg = "비밀번호 불일치";

        else if (member.getEmail() == null || member.getEmail().length() == 0)

            errorMsg = "이메일 주소를 입력하세요";

        else {

            session.setAttribute("member", member);

            return "redirect:register_success";

        }

        model.addAttribute("member", member);
        model.addAttribute("errorMsg", errorMsg);
        

        return "form5/register1";

    }

 

    @RequestMapping("form5/register_success")

    public String register_success1(Model model) {

        return "form5/register_success";

    }

 

}