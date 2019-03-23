package com.B509.JKGLPT.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "drugsinfo")
public class Drugsinfo {
    @Id
    private Integer drugsId;
    //商品描述
    private String drugsDesc;
    //商品评价
    private String drugsEval;

    public String getDrugsEval() {
		return drugsEval;
	}

	public void setDrugsEval(String drugsEval) {
		this.drugsEval = drugsEval;
	}

	public Integer getDrugsId() {
        return drugsId;
    }

    public void setDrugsId(Integer drugsId) {
        this.drugsId = drugsId;
    }

    public String getDrugsDesc() {
        return drugsDesc;
    }

    public void setDrugsDesc(String drugsDesc) {
        this.drugsDesc = drugsDesc == null ? null : drugsDesc.trim();
    }

	@Override
	public String toString() {
		return "Drugsinfo [drugsId=" + drugsId + ", drugsDesc=" + drugsDesc + ", drugsEval=" + drugsEval + "]";
	}
    
}