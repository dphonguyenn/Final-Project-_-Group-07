package com.laptrinhjavaweb.entity;

public class Product {
	private int id;
	private String name;
	private String image;
	private double price;
	private String title;
	private String description;
	private int cid;
	private int sell_id;
	private String image1;
	private String image2;
	private String image3;
	private int amount;

	public Product(int id, String name, String image, double price, String title, String description, int cid,
			int sell_id, String image1, String image2, String image3) {
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.title = title;
		this.description = description;
		this.cid = cid;
		this.sell_id = sell_id;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
	}

	public Product(int id, String name, String image, double price, String title, String description, int cid,
			int sell_id, String image1, String image2, String image3, int amount) {
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.title = title;
		this.description = description;
		this.cid = cid;
		this.sell_id = sell_id;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.amount = amount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Product{" + "id=" + id + ",name=" + name + ", image = " + image + ", price = " + price + ", title = "
				+ title + ", description=" + description;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public int getSell_id() {
		return sell_id;
	}

	public void setSell_id(int sell_id) {
		this.sell_id = sell_id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
}