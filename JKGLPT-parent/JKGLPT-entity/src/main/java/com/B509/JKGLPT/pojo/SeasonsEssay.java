package com.B509.JKGLPT.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="seasons_essay")
public class SeasonsEssay {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String essay;
	private String pic;
	private String title;
	private Date releaseTime;
	
	public SeasonsEssay(Integer id, String essay, String pic, String title, Date releaseTime) {
		super();
		this.id = id;
		this.essay = essay;
		this.pic = pic;
		this.title = title;
		this.releaseTime = releaseTime;
	}
	public SeasonsEssay() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEssay() {
		return essay;
	}
	public void setEssay(String essay) {
		this.essay = essay;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getReleaseTime() {
		return new SimpleDateFormat().format(this.releaseTime);
	}
	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}
	@Override
	public String toString() {
		return "SeasonsEssay [id=" + id + ", essay=" + essay + ", pic=" + pic + ", title=" + title + ", releaseTime="
				+ releaseTime + "]";
	}
	
}
