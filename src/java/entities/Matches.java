/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author MEET
 */
@Entity
@Table(name = "matches")
public class Matches implements Serializable{
    @Id
    int match_id;
    int season;
    String date;
    int team1;
    int team2;
    int toss_winner;
    String toss_decision;
    String result;
    int winner;
    int win_by_runs;
    int win_by_wickets;
    String player_of_match;
    int ground_id;
    String score_team1;
    String wicket_team1 ; 
    String score_team2;
    String wicket_team2 ; 
    int tournament_id;

    public Matches(int season, String date, int team1, int team2, int toss_winner, String toss_decision, String result, int winner, int win_by_runs, int win_by_wickets, String player_of_match, int ground_id, String score_team1, String wicket_team1, String score_team2, String wicket_team2, int tournament_id) {
        this.season = season;
        this.date = date;
        this.team1 = team1;
        this.team2 = team2;
        this.toss_winner = toss_winner;
        this.toss_decision = toss_decision;
        this.result = result;
        this.winner = winner;
        this.win_by_runs = win_by_runs;
        this.win_by_wickets = win_by_wickets;
        this.player_of_match = player_of_match;
        this.ground_id = ground_id;
        this.score_team1 = score_team1;
        this.wicket_team1 = wicket_team1;
        this.score_team2 = score_team2;
        this.wicket_team2 = wicket_team2;
        this.tournament_id = tournament_id;
    }

    public int getMatch_id() {
        return match_id;
    }

    public void setMatch_id(int match_id) {
        this.match_id = match_id;
    }

    public int getSeason() {
        return season;
    }

    public void setSeason(int season) {
        this.season = season;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getTeam1() {
        return team1;
    }

    public void setTeam1(int team1) {
        this.team1 = team1;
    }

    public int getTeam2() {
        return team2;
    }

    public void setTeam2(int team2) {
        this.team2 = team2;
    }

    public int getToss_winner() {
        return toss_winner;
    }

    public void setToss_winner(int toss_winner) {
        this.toss_winner = toss_winner;
    }

    public String getToss_decision() {
        return toss_decision;
    }

    public void setToss_decision(String toss_decision) {
        this.toss_decision = toss_decision;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public int getWinner() {
        return winner;
    }

    public void setWinner(int winner) {
        this.winner = winner;
    }

    public int getWin_by_runs() {
        return win_by_runs;
    }

    public void setWin_by_runs(int win_by_runs) {
        this.win_by_runs = win_by_runs;
    }

    public int getWin_by_wickets() {
        return win_by_wickets;
    }

    public void setWin_by_wickets(int win_by_wickets) {
        this.win_by_wickets = win_by_wickets;
    }

    public String getPlayer_of_match() {
        return player_of_match;
    }

    public void setPlayer_of_match(String player_of_match) {
        this.player_of_match = player_of_match;
    }

    public int getGround_id() {
        return ground_id;
    }

    public void setGround_id(int ground_id) {
        this.ground_id = ground_id;
    }

    public String getScore_team1() {
        return score_team1;
    }

    public void setScore_team1(String score_team1) {
        this.score_team1 = score_team1;
    }

    public String getWicket_team1() {
        return wicket_team1;
    }

    public void setWicket_team1(String wicket_team1) {
        this.wicket_team1 = wicket_team1;
    }

    public String getScore_team2() {
        return score_team2;
    }

    public void setScore_team2(String score_team2) {
        this.score_team2 = score_team2;
    }

    public String getWicket_team2() {
        return wicket_team2;
    }

    public void setWicket_team2(String wicket_team2) {
        this.wicket_team2 = wicket_team2;
    }

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTournament_id(int tournament_id) {
        this.tournament_id = tournament_id;
    }

    @Override
    public String toString() {
        return "Matches{" + "match_id=" + match_id + ", season=" + season + ", date=" + date + ", team1=" + team1 + ", team2=" + team2 + ", toss_winner=" + toss_winner + ", toss_decision=" + toss_decision + ", result=" + result + ", winner=" + winner + ", win_by_runs=" + win_by_runs + ", win_by_wickets=" + win_by_wickets + ", player_of_match=" + player_of_match + ", ground_id=" + ground_id + ", score_team1=" + score_team1 + ", wicket_team1=" + wicket_team1 + ", score_team2=" + score_team2 + ", wicket_team2=" + wicket_team2 + ", tournament_id=" + tournament_id + '}';
    }
    
    
}
