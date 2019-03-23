package com.B509.JKGLPT.pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="prescription")
public class Prescription {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String essay;
	
	public Prescription(Integer id, String name, String essay) {
		super();
		this.id = id;
		this.name = name;
		this.essay = essay;
	}
	public Prescription() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEssay() {
		return essay;
	}
	public void setEssay(String essay) {
		this.essay = essay;
	}
	@Override
	public String toString() {
		return "Prescription [id=" + id + ", name=" + name + ", essay=" + essay + "]";
	}
	
	
}
