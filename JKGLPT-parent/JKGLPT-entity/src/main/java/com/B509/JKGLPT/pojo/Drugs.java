package com.B509.JKGLPT.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "drugs")
public class Drugs {
    @Id
    private Integer drugsId;

    private String drugsName;

    private String drugsPic;

    private Double drugsPrice;

    private Integer sellerId;

    private Integer drugsCharacteristicId;

    private Integer drugsClassificationId;

    public Integer getDrugsId() {
        return drugsId;
    }

    public void setDrugsId(Integer drugsId) {
        this.drugsId = drugsId;
    }

    public String getDrugsName() {
        return drugsName;
    }

    public void setDrugsName(String drugsName) {
        this.drugsName = drugsName == null ? null : drugsName.trim();
    }

    public String getDrugsPic() {
        return drugsPic;
    }

    public void setDrugsPic(String drugsPic) {
        this.drugsPic = drugsPic == null ? null : drugsPic.trim();
    }

    public Double getDrugsPrice() {
        return drugsPrice;
    }

    public void setDrugsPrice(Double drugsPrice) {
        this.drugsPrice = drugsPrice;
    }

    public Integer getSellerId() {
        return sellerId;
    }

    public void setSellerId(Integer sellerId) {
        this.sellerId = sellerId;
    }

    public Integer getDrugsCharacteristicId() {
        return drugsCharacteristicId;
    }

    public void setDrugsCharacteristicId(Integer drugsCharacteristicId) {
        this.drugsCharacteristicId = drugsCharacteristicId;
    }

    public Integer getDrugsClassificationId() {
        return drugsClassificationId;
    }

    public void setDrugsClassificationId(Integer drugsClassificationId) {
        this.drugsClassificationId = drugsClassificationId;
    }

    @Override
    public String toString() {
        return "Drugs [drugsId=" + drugsId + ", drugsName=" + drugsName + ", drugsPic=" + drugsPic + ", drugsPrice="
                + drugsPrice + ", sellerId=" + sellerId + ", drugsCharacteristicId=" + drugsCharacteristicId
                + ", drugsClassificationId=" + drugsClassificationId + "]";
    }

}