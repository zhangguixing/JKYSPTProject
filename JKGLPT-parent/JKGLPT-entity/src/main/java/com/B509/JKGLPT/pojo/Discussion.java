package com.B509.JKGLPT.pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="discussion")
public class Discussion {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Integer drugs_id;
	private String discuss;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getDrugs_id() {
		return drugs_id;
	}
	public void setDrugs_id(Integer drugs_id) {
		this.drugs_id = drugs_id;
	}
	public String getDiscuss() {
		return discuss;
	}
	public void setDiscuss(String discuss) {
		this.discuss = discuss;
	}
	@Override
	public String toString() {
		return "Disscussion [id=" + id + ", drugs_id=" + drugs_id + ", discuss=" + discuss + "]";
	}
	
}
