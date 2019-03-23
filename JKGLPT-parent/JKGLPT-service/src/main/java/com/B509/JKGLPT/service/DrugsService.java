package com.B509.JKGLPT.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.B509.JKGLPT.pojo.Characteristic;
import com.B509.JKGLPT.pojo.Classification;
import com.B509.JKGLPT.pojo.Drugs;
import com.B509.JKGLPT.pojo.Drugsinfo;
/**
 * 药品类
 * @author 27161
 *
 */
@Service
public class DrugsService extends BaseService<Drugs> {
	@Autowired
	private CharacteristicService characteristicService;
	@Autowired
	private ClassificationService classificationService;
	@Autowired
	private DrugsinfoService drugsinfoService; 
	/**
	 * 添加药品
	 * @param drugsCharacteristicName
	 * @param drugsClassificationName
	 * @param drug
	 * @return
	 */
	public String save(String drugsCharacteristicName,String drugsClassificationName,Drugs drug ,Drugsinfo drugsinfo){
		Logger logger = LoggerFactory.getLogger(getClass());
		Characteristic characteristic = new Characteristic();
		characteristic.setDrugsCharacteristicName(drugsCharacteristicName);
		Characteristic drugsCharacteristic = characteristicService.queryOne(characteristic);
		Classification classification = new Classification();
		classification.setDrugsClassificationName(drugsClassificationName);
		Classification drugsclassification = classificationService.queryOne(classification);
		logger.info("aaaaa====="+drugsCharacteristic);
		drug.setDrugsCharacteristicId(drugsCharacteristic.getDrugsCharacteristicId());
		drug.setDrugsClassificationId(drugsclassification.getDrugsClassificationId());
		logger.info("sdadasd====="+drug);
		super.save(drug);
		Integer drugsId = super.queryOne(drug).getDrugsId();
		drugsinfo.setDrugsId(drugsId);
		drugsinfoService.save(drugsinfo);
		
		return "success";
	}
}
