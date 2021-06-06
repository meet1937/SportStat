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
@Table(name = "ipl_batting_career")
public class BatCareer implements Serializable {

    @Id
    int career_stats_id;
    int player_id;
    int matches;
    int innings;
    int no;
    int runs;
    int highest_score;
    float sr;
    int hundred;
    int two_hundred;
    int fifty;
    int four;
    int six;
    int tournament_id;

    public BatCareer() {
    }

    public BatCareer(int player_id, int matches, int innings, int no, int runs, int highest_score, float sr, int hundred, int two_hundred, int fifty, int four, int six, int tournament_id) {
        this.player_id = player_id;
        this.matches = matches;
        this.innings = innings;
        this.no = no;
        this.runs = runs;
        this.highest_score = highest_score;
        this.sr = sr;
        this.hundred = hundred;
        this.two_hundred = two_hundred;
        this.fifty = fifty;
        this.four = four;
        this.six = six;
        this.tournament_id = tournament_id;
    }

    public int getCareer_stats_id() {
        return career_stats_id;
    }

    public void setCareer_stats_id(int career_stats_id) {
        this.career_stats_id = career_stats_id;
    }

    public int getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(int player_id) {
        this.player_id = player_id;
    }

    public int getMatches() {
        return matches;
    }

    public void setMatches(int matches) {
        this.matches = matches;
    }

    public int getInnings() {
        return innings;
    }

    public void setInnings(int innings) {
        this.innings = innings;
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public int getRuns() {
        return runs;
    }

    public void setRuns(int runs) {
        this.runs = runs;
    }

    public int getHighest_score() {
        return highest_score;
    }

    public void setHighest_score(int highest_score) {
        this.highest_score = highest_score;
    }

    public float getSr() {
        return sr;
    }

    public void setSr(float sr) {
        this.sr = sr;
    }

    public int getHundred() {
        return hundred;
    }

    public void setHundred(int hundred) {
        this.hundred = hundred;
    }

    public int getTwo_hundred() {
        return two_hundred;
    }

    public void setTwo_hundred(int two_hundred) {
        this.two_hundred = two_hundred;
    }

    public int getFifty() {
        return fifty;
    }

    public void setFifty(int fifty) {
        this.fifty = fifty;
    }

    public int getFour() {
        return four;
    }

    public void setFour(int four) {
        this.four = four;
    }

    public int getSix() {
        return six;
    }

    public void setSix(int six) {
        this.six = six;
    }

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTournament_id(int tournament_id) {
        this.tournament_id = tournament_id;
    }

    @Override
    public String toString() {
        return "BatCareer{" + "career_stats_id=" + career_stats_id + ", player_id=" + player_id + ", matches=" + matches + ", innings=" + innings + ", no=" + no + ", runs=" + runs + ", highest_score=" + highest_score + ", sr=" + sr + ", hundred=" + hundred + ", two_hundred=" + two_hundred + ", fifty=" + fifty + ", four=" + four + ", six=" + six + ", tournament_id=" + tournament_id + '}';
    }
    
    
}
