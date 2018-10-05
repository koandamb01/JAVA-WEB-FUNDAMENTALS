package com.roster.web.models;

import java.util.ArrayList;

public class Roster {
	private ArrayList<Team> teams = new ArrayList<Team>();
	

	public ArrayList<Team> getTeams() {
		return teams;
	}

	public void addTeam(Team team) {
		this.teams.add(team);
		System.out.println("You just add a Team " + team.getTeamName() + ", Now the Roster has " + team.getNumberOfTeams() + " teams.");
	}
	
	public Team findTeamById(String id) {
		int teamID = Integer.parseInt(id);
		
		for(Team team : this.teams) {
			if(teamID == team.getTeamID()) { return team; }
		}
		return null;
	}
	
	
	public boolean deleteTeamById(String id) {
		int teamID = Integer.parseInt(id);
		int i = 0;
		for(Team team : this.teams) {
			if(teamID == team.getTeamID()) { 
				this.teams.remove(i);
				System.out.println("Team was remove");
				return true;
			}
			i++;
		}
		System.out.println("Team was not found");
		return false;
	}
}
