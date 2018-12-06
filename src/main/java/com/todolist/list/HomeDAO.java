package com.todolist.list;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDAO {

	@Autowired
	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}
	
	public List<HomeDTO> getList() {


		List<HomeDTO> lists = sessionTemplate.selectList("listMapper.getLists");

		return lists;

	}
	
	public void insertData(HomeDTO homeDTO) {

		sessionTemplate.insert("listMapper.listInsert", homeDTO);

	}
	
}
