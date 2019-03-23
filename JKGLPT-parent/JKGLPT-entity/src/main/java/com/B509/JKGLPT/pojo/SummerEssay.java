package com.B509.JKGLPT.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="summer_essay")
public class SummerEssay {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String essay;
	private String pic;
	private String title;
	private String classify;
	private Date releaseTime;
	
	public SummerEssay() {
		super();
	}
	
	public SummerEssay(Integer id, String essay, String pic, String title, String classify, Date releaseTime) {
		super();
		this.id = id;
		this.essay = essay;
		this.pic = pic;
		this.title = title;
		this.classify = classify;
		this.releaseTime = releaseTime;
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
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}
	public Date getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}

	@Override
	public String toString() {
		return "SummerEssay [id=" + id + ", essay=" + essay + ", pic=" + pic + ", title=" + title + ", classify="
				+ classify + ", releaseTime=" + releaseTime + "]";
	}
	
}
