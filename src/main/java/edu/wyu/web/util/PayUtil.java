package edu.wyu.web.util;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class PayUtil {

	private static Logger logger = LogManager.getLogger(PayUtil.class);

	public static String UID = "a9e256bc5f06557854952777";

	public static String NOTIFY_URL = "http://onlineshopytsc.pagekite.me/pays/notifyPay";

	public static String RETURN_URL = "http://onlineshopytsc.pagekite.me/pays/returnPay";

	public static String BASE_URL = "https://pay.paysapi.com";

	public static String TOKEN = "ff4e3a6341a1dabd3e08575a632bbbab";

	public static Map<String, Object> payOrder(Map<String, Object> remoteMap) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("uid", UID);
		paramMap.put("notify_url", NOTIFY_URL);
		paramMap.put("return_url", RETURN_URL);
		paramMap.putAll(remoteMap);
		paramMap.put("key", getKey(paramMap));
		return paramMap;
	}

	public static String getKey(Map<String, Object> remoteMap) {
		String key = "";
		if (null != remoteMap.get("goodsname")) {
			key += remoteMap.get("goodsname");
		}
		if (null != remoteMap.get("istype")) {
			key += remoteMap.get("istype");
		}
		if (null != remoteMap.get("notify_url")) {
			key += remoteMap.get("notify_url");
		}
		if (null != remoteMap.get("orderid")) {
			key += remoteMap.get("orderid");
		}
		if (null != remoteMap.get("orderuid")) {
			key += remoteMap.get("orderuid");
		}
		if (null != remoteMap.get("price")) {
			key += remoteMap.get("price");
		}
		if (null != remoteMap.get("return_url")) {
			key += remoteMap.get("return_url");
		}
		key += TOKEN;
		if (null != remoteMap.get("uid")) {
			key += remoteMap.get("uid");
		}
		return MD5Util.encryption(key);
	}

	public static boolean checkPayKey(PaySaPi paySaPi) {
		String key = "";
		if (!StringUtils.isBlank(paySaPi.getOrderid())) {
			logger.info("支付回来的订单号：" + paySaPi.getOrderid());
			key += paySaPi.getOrderid();
		}
		if (!StringUtils.isBlank(paySaPi.getOrderuid())) {
			logger.info("支付回来的支付记录的ID：" + paySaPi.getOrderuid());
			key += paySaPi.getOrderuid();
		}
		if (!StringUtils.isBlank(paySaPi.getPaysapi_id())) {
			logger.info("支付回来的平台订单号：" + paySaPi.getPaysapi_id());
			key += paySaPi.getPaysapi_id();
		}
		if (!StringUtils.isBlank(paySaPi.getPrice())) {
			logger.info("支付回来的价格：" + paySaPi.getPrice());
			key += paySaPi.getPrice();
		}
		if (!StringUtils.isBlank(paySaPi.getRealprice())) {
			logger.info("支付回来的真实价格：" + paySaPi.getRealprice());
			key += paySaPi.getRealprice();
		}
		logger.info("支付回来的Key：" + paySaPi.getKey());
		key += TOKEN;
		logger.info("我们自己拼接的Key：" + MD5Util.encryption(key));
		return paySaPi.getKey().equals(MD5Util.encryption(key));
	}

	public static String getOrderIdByUUId() {
		int machineId = 1;// 最大支持1-9个集群机器部署
		int hashCodeV = UUID.randomUUID().toString().hashCode();
		if (hashCodeV < 0) {// 有可能是负数
			hashCodeV = -hashCodeV;
		}
		// 0 代表前面补充0;d 代表参数为正数型
		return machineId + String.format("%01d", hashCodeV);
	}

}
