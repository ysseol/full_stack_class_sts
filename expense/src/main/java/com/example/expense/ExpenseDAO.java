package com.example.expense;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ExpenseDAO {
	List<ExpenseDTO> list();
	
	void insert(ExpenseDTO dto);
	
	ExpenseDTO detail(int idx);
	
	void update(ExpenseDTO dto);
	
	void delete(int idx);
}
