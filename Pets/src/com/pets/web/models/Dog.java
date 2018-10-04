package com.pets.web.models;

public class Dog extends Animal implements Pet{

	public Dog(String name, String breed, Integer weight) {
		super(name, breed, weight);
	}

	public String showAffection() {
		int w = this.getWeight();
		String str;
		
		if(w > 20) {
			 str = " Curled up next up to you." ;
		}
		else {
			str = " hopped into your lap and cuddled you!";
		}
		
		return this.getName() + str;
	}
}
