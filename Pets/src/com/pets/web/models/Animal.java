package com.pets.web.models;

public class Animal {
	private String name;
	private String bread;
	private int weight;
	
	public Animal(String name, String breed, int weight) {
		this.name = name;
		this.bread = breed;
		this.weight = weight;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBread() {
		return bread;
	}

	public void setBread(String bread) {
		this.bread = bread;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	
	
	
}
