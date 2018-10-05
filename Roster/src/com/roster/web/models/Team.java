package com.roster.web.models;

import java.util.ArrayList;

public class Team {
	private String teamName;
	private int id;
	private static int numberOfTeams = 0;
	private ArrayList<Player> players = new ArrayList<Player>();
	
	public Team(String teamName) {
		this.teamName = teamName;
		Team.numberOfTeams += 1;
		this.id = Team.numberOfTeams;
	}
	
	public String getTeamName() {
		return teamName;
	}
	
	public int getNumberOfTeams() {
		return Team.numberOfTeams;
	}
	
	public int getTeamID() {
		return id;
	}

	public ArrayList<Player> getPlayers() {
		return players;
	}
	
	
	public Player findPlayerById(String id) {
		int playerID = Integer.parseInt(id);
		
		for(Player player : this.players ) {
			if(playerID == player.getPlayerID()) { return player; }
		}
		return null;
	}
	
	public void addPlayer(Player player) {
		players.add(player);
		System.out.println("You just add a player " + player.getFirstName() + " " + player.getLastName() + " to team " + this.teamName + ", Now this team has " + this.players.size() + " players.");
	}
	
	
	public boolean deletePlayerById(String id) {
		int playerID = Integer.parseInt(id);
		int i = 0;
		for(Player player : this.players ) {
			if(playerID == player.getPlayerID()) {
				this.players.remove(i);
				System.out.println("Player was remove");
				return true;
			}
			i++;
		}
		System.out.println("Player was not found");
		return false;
	}
}
