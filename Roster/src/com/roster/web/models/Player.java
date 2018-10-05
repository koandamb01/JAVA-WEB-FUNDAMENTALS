package com.roster.web.models;

public class Player {
	private String firstName;
	private String lastName;
	private int age;
	private static int numberOfPlayers = 0;
	private int id;
	
	public Player(String firstName, String lastName, int age) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		Player.numberOfPlayers += 1;
		this.id = Player.numberOfPlayers;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}
	
	public int getNumberOfPlayers() {
		return numberOfPlayers;
	}

	public int getAge() {
		return age;
	}

	public int getPlayerID() {
		// TODO Auto-generated method stub
		return this.id;
	}
}
