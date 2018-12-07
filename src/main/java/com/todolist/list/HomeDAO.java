package com.todolist.list;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDAO {

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	public List<HomeDTO> getLists() {

		return sessionTemplate.selectList("listMapper.getLists");
	}
	
	public void insert(HomeDTO homeDTO) {
		/*
		 * listInsert 네이밍변경
		 */
		sessionTemplate.insert("listMapper.listInsert", homeDTO);
	}
	
}
