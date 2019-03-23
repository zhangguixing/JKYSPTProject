package com.B509.JKGLPT.Vo;

import java.util.ArrayList;

import com.B509.JKGLPT.pojo.Classification;
import com.B509.JKGLPT.pojo.Drugs;

/**
 * @author 27161
 *
 */
public class ShowDrugsVo {
	ArrayList<Drugs> drugs = new ArrayList<Drugs>();
	private Classification classification;
	
	public ArrayList<Drugs> getDrugs() {
		return drugs;
	}
	public void setDrugs(ArrayList<Drugs> drugs) {
		this.drugs = drugs;
	}
	public Classification getClassification() {
		return classification;
	}
	public void setClassification(Classification classification) {
		this.classification = classification;
	}
	@Override
	public String toString() {
		return "ShowDrugsUtils [drugs=" + drugs + ", classification=" + classification + "]";
	}
	
}
