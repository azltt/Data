package com.azl.service.item.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.azl.mapper.ItemMapper;
import com.azl.pojo.Item;
import com.azl.pojo.ItemExample;
import com.azl.service.item.ItemService;
@Service
public class ItemServiceImpl implements ItemService{
	@Autowired
	private ItemMapper itemMapper;

	@Override
	public List<Item> getitemList() {
		ItemExample example=new ItemExample();
		List<Item> selectByExample = itemMapper.selectByExample(example);
		return selectByExample;
	}

}
