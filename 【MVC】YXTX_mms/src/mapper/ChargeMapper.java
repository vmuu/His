package mapper;

import java.util.List;

import entity.pojo.ChargeInfo;
import entity.pojo.Patient;

public interface ChargeMapper {
	List<ChargeInfo> ChargeList(String Keyword);//查询
	int ChargeAdd(Patient patient);//添加
	int ChargeDel(Integer id);//删除
	int ChargeUpd(Patient patient);//修改
}
