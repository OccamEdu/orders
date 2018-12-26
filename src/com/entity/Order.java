package com.entity;

/**
 * @author zmq
 * @email Seven508@126.com
 * @date 2018-11-15 10:08
 * @description
 */
public class Order {
	private long orderId;
	private String orderNum;
	private String orderTotalPrice;
	private String orderStatus;
	private String orderExpress;
	private String orderExpressNumber;
	private String orderFreight;
	private String orderCreateTime;

	public Order() {
	}

	public long getOrderId() {
		return orderId;
	}

	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public String getOrderTotalPrice() {
		return orderTotalPrice;
	}

	public void setOrderTotalPrice(String orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getOrderExpress() {
		return orderExpress;
	}

	public void setOrderExpress(String orderExpress) {
		this.orderExpress = orderExpress;
	}

	public String getOrderExpressNumber() {
		return orderExpressNumber;
	}

	public void setOrderExpressNumber(String orderExpressNumber) {
		this.orderExpressNumber = orderExpressNumber;
	}

	public String getOrderFreight() {
		return orderFreight;
	}

	public void setOrderFreight(String orderFreight) {
		this.orderFreight = orderFreight;
	}

	public String getOrderCreateTime() {
		return orderCreateTime;
	}

	public void setOrderCreateTime(String orderCreateTime) {
		this.orderCreateTime = orderCreateTime;
	}
}
