package com.newlecture.web.service;

import java.util.List;

import com.newlecture.web.entity.Notice;

public class NoticeService {
	public List<Notice> getNoticeList(){
		
		return getNoticeList("title", "", 1);
	}
	public List<Notice> getNoticeList(int page){
		
		return getNoticeList("title", "", page);
	}
	public List<Notice> getNoticeList(String field, String query, int page){
	
	return null;
	}
	public int getNoticeCount() {
		return 0;
	}
	public int getNoticeCount(String field, String query) {
		return 0;
	}
	public List<Notice> getNotice(int id){
		
		return null;
	}
	public List<Notice> getNextNotice(int id){
	
	return null;
	}
	public List<Notice> getPrevNotice(int id){
	
	return null;
	}
}

