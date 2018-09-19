package com.azl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class HomeController {
	@RequestMapping(value = {"/", "/index"})
    public String index() {
        return "index";
    }
	@RequestMapping(value = {"/store"})
    public String store() {
        return "store";
    }
	@RequestMapping(value = {"/service"})
    public String service() {
        return "service";
    }
	@RequestMapping(value = {"/classify"})
    public String classify() {
        return "store_classify";
    }
	/*@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
        return "login";
    }*/
	/*@RequestMapping(value = {"/dologin"})
    public String login() {
        return "login";
    }*/
}
