package com.B509.JKGLPT.pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="essay_rela")
public class EssayRela {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Integer springEssayId;
	private Integer summerEssayId;
	private	Integer winterEssayId;
	private Integer autumnEssayId;
	private Integer presciptionId;
	
	public EssayRela(Integer id, Integer springEssayId, Integer summerEssayId, Integer winterEssayId,
			Integer autumnEssayId, Integer presciptionId) {
		super();
		this.id = id;
		this.springEssayId = springEssayId;
		this.summerEssayId = summerEssayId;
		this.winterEssayId = winterEssayId;
		this.autumnEssayId = autumnEssayId;
		this.presciptionId = presciptionId;
	}
	public EssayRela() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getSpringEssayId() {
		return springEssayId;
	}
	public void setSpringEssayId(Integer springEssayId) {
		this.springEssayId = springEssayId;
	}
	public Integer getSummerEssayId() {
		return summerEssayId;
	}
	public void setSummerEssayId(Integer summerEssayId) {
		this.summerEssayId = summerEssayId;
	}
	public Integer getWinterEssayId() {
		return winterEssayId;
	}
	public void setWinterEssayId(Integer winterEssayId) {
		this.winterEssayId = winterEssayId;
	}
	public Integer getAutumnEssayId() {
		return autumnEssayId;
	}
	public void setAutumnEssayId(Integer autumnEssayId) {
		this.autumnEssayId = autumnEssayId;
	}
	public Integer getPresciptionId() {
		return presciptionId;
	}
	public void setPresciptionId(Integer presciptionId) {
		this.presciptionId = presciptionId;
	}
	@Override
	public String toString() {
		return "EssayRela [id=" + id + ", springEssayId=" + springEssayId + ", summerEssayId=" + summerEssayId
				+ ", winterEssayId=" + winterEssayId + ", autumnEssayId=" + autumnEssayId + ", presciptionId="
				+ presciptionId + "]";
	}
	
}
