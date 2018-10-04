package com.pets.web.models;

public class Cat extends Animal implements Pet {

	public Cat(String name, String breed, Integer weight) {
		super(name, breed, weight);
	}
	
	
	public String showAffection() {
		return "Your " + this.getBread() + " cat, " + this.getName() + ", looked at you with some affection. You think";
	}
}
