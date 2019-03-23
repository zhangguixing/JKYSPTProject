package com.B509.JKGLPT.Vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ShowDiscussionVO {
	private String discuss;
	private Date date;
	private String nickName;
	public String getDiscuss() {
		return discuss;
	}
	public void setDiscuss(String discuss) {
		this.discuss = discuss;
	}
	public String getDate() {
		return new SimpleDateFormat("yyyy-MM-dd HH-mm").format(this.date);
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	@Override
	public String toString() {
		return "ShowDisscussionVO [discuss=" + discuss + ", date=" + date + ", nickName=" + nickName + "]";
	}
	
}
