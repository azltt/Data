package com.azl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.azl.pojo.Item;
import com.azl.service.item.ItemService;

@Controller
@RequestMapping("/item")
public class ItemController {
	@Autowired
	private ItemService itemService;
	@RequestMapping("/list")
	public String itemList(Model model) {
		List<Item> list=itemService.getitemList();
		model.addAttribute("items", list);
		return "store";
		
	}
}
