package com.B509.JKGLPT.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "classification")
public class Classification {
    @Id
    private Integer drugsClassificationId;

    private String drugsClassificationName;

    public Integer getDrugsClassificationId() {
        return drugsClassificationId;
    }

    public void setDrugsClassificationId(Integer drugsClassificationId) {
        this.drugsClassificationId = drugsClassificationId;
    }

    public String getDrugsClassificationName() {
        return drugsClassificationName;
    }

    public void setDrugsClassificationName(String drugsClassificationName) {
        this.drugsClassificationName = drugsClassificationName == null ? null : drugsClassificationName.trim();
    }

	@Override
	public String toString() {
		return "Classification [drugsClassificationId=" + drugsClassificationId + ", drugsClassificationName="
				+ drugsClassificationName + "]";
	}
    
}