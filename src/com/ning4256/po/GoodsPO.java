package com.ning4256.po;

public class GoodsPO {
	private int goodsId;
	private String goodsName;
	private double goodsPrice; 
	private int number;
	private String img;
	private String description;
	private int goodsTypeId;
	
	public GoodsPO() {
		super();
	}

	public GoodsPO(int goodsId, String goodsName, double goodsPrice, int number, String img, String description,
			int goodsType) {
		super();
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.number = number;
		this.img = img;
		this.description = description;
		this.goodsTypeId = goodsType;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getGoodsTypeId() {
		return goodsTypeId;
	}

	public void setGoodsTypeId(int goodsTypeId) {
		this.goodsTypeId = goodsTypeId;
	}

	@Override
	public String toString() {
		return "GoodsPO [goodsId=" + goodsId + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice + ", number="
				+ number + ", img=" + img + ", description=" + description + ", goodsTypeId=" + goodsTypeId + "]";
	}
	
	
	
}
