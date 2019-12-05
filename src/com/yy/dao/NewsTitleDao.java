package com.yy.dao;

import java.util.List;

import com.yy.entity.Fenye;
import com.yy.entity.NewsTitle;

public interface NewsTitleDao {
	/**
	 * 添加分配信息
	 * @param nt
	 * @return
	 */
	Integer addNews(NewsTitle nt);
	
	Integer selectNewsJinTian(NewsTitle nt);
}
