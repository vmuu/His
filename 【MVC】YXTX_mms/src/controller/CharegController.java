package controller;

import java.util.List;

import entity.pojo.ChargeInfo;
import mapper.ChargeMapper;
import service.ChargeService;

public class CharegController {
	ChargeMapper mapper = new ChargeService();

	public List<ChargeInfo> chargeList(String Keyword) {
		// 传入查询数据
		if (Keyword == null || Keyword.trim().equals("")) {
			Keyword = null;
		}
		List<ChargeInfo> chargeList = mapper.ChargeList(Keyword);
		return chargeList;
	}

	public static void main(String[] args) {
		/*ChargeMapper list = new ChargeService();
		ArrayList<ChargeInfo> chargeList = list.ChargeList(null);
		for (ChargeInfo chargeInfo : chargeList) {
			System.out.println(chargeInfo.toString());
		}*/
		CharegController charegController = new CharegController();
		List<ChargeInfo> chargeList = charegController.chargeList(null);
		for (ChargeInfo chargeInfo : chargeList) {
			System.out.println(chargeInfo.toString());
		}
	}
}
