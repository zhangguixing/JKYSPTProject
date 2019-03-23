package com.B509.JKGLPT.Vo;

public class OrdersVO {
    private Integer id;

    private Integer drugsId;

    private String drugsName;

    private String drugsPic;

    private Double drugsPrice;

    private Integer num;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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
        this.drugsName = drugsName;
    }

    public String getDrugsPic() {
        return drugsPic;
    }

    public void setDrugsPic(String drugsPic) {
        this.drugsPic = drugsPic;
    }

    public Double getDrugsPrice() {
        return drugsPrice;
    }

    public void setDrugsPrice(Double drugsPrice) {
        this.drugsPrice = drugsPrice;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "OrdersVO [id=" + id + ", drugsId=" + drugsId + ", drugsName=" + drugsName + ", drugsPic=" + drugsPic
                + ", drugsPrice=" + drugsPrice + ", num=" + num + "]";
    }

}
