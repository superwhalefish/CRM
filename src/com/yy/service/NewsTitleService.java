package com.yy.service;

import javax.servlet.http.HttpServletRequest;

import com.yy.entity.NewsTitle;

public interface NewsTitleService {
	Integer selectNewsJinTian(HttpServletRequest request);
}
