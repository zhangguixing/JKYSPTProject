package com.B509.JKGLPT.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "characteristic")
public class Characteristic {
    @Id
    private Integer drugsCharacteristicId;

    private String drugsCharacteristicName;

    public Integer getDrugsCharacteristicId() {
        return drugsCharacteristicId;
    }

    public void setDrugsCharacteristicId(Integer drugsCharacteristicId) {
        this.drugsCharacteristicId = drugsCharacteristicId;
    }

    public String getDrugsCharacteristicName() {
        return drugsCharacteristicName;
    }

    public void setDrugsCharacteristicName(String drugsCharacteristicName) {
        this.drugsCharacteristicName = drugsCharacteristicName == null ? null : drugsCharacteristicName.trim();
    }

	@Override
	public String toString() {
		return "Characteristic [drugsCharacteristicId=" + drugsCharacteristicId + ", drugsCharacteristicName="
				+ drugsCharacteristicName + "]";
	}
    
}