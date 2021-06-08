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
@Table(name = "ipl_bowling_career")
public class BowlCareer implements Serializable {

    @Id
    int stats_id;
    int matches;
    int innings;
    int balls;
    int wkts;
    int bbi_wkts;
    int bbi_runs;
    int bbm_wkts;
    int bbm_runs;
    int runs;
    int fivewkts;
    int tenwkts;
    int tournament_id;

    public BowlCareer() {
    }

    public BowlCareer(int matches, int innings, int balls, int wkts, int bbi_wkts, int bbi_runs, int bbm_wkts, int bbm_runs, int runs, int fivewkts, int tenwkts, int tournament_id) {
        this.matches = matches;
        this.innings = innings;
        this.balls = balls;
        this.wkts = wkts;
        this.bbi_wkts = bbi_wkts;
        this.bbi_runs = bbi_runs;
        this.bbm_wkts = bbm_wkts;
        this.bbm_runs = bbm_runs;
        this.runs = runs;
        this.fivewkts = fivewkts;
        this.tenwkts = tenwkts;
        this.tournament_id = tournament_id;
    }

    public int getStats_id() {
        return stats_id;
    }

    public void setStats_id(int stats_id) {
        this.stats_id = stats_id;
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

    public int getBalls() {
        return balls;
    }

    public void setBalls(int balls) {
        this.balls = balls;
    }

    public int getWkts() {
        return wkts;
    }

    public void setWkts(int wkts) {
        this.wkts = wkts;
    }

    public int getBbi_wkts() {
        return bbi_wkts;
    }

    public void setBbi_wkts(int bbi_wkts) {
        this.bbi_wkts = bbi_wkts;
    }

    public int getBbi_runs() {
        return bbi_runs;
    }

    public void setBbi_runs(int bbi_runs) {
        this.bbi_runs = bbi_runs;
    }

    public int getBbm_wkts() {
        return bbm_wkts;
    }

    public void setBbm_wkts(int bbm_wkts) {
        this.bbm_wkts = bbm_wkts;
    }

    public int getBbm_runs() {
        return bbm_runs;
    }

    public void setBbm_runs(int bbm_runs) {
        this.bbm_runs = bbm_runs;
    }

    public int getRuns() {
        return runs;
    }

    public void setRuns(int runs) {
        this.runs = runs;
    }

    public int getFivewkts() {
        return fivewkts;
    }

    public void setFivewkts(int fivewkts) {
        this.fivewkts = fivewkts;
    }

    public int getTenwkts() {
        return tenwkts;
    }

    public void setTenwkts(int tenwkts) {
        this.tenwkts = tenwkts;
    }

    public int getTournament_id() {
        return tournament_id;
    }

    public void setTournament_id(int tournament_id) {
        this.tournament_id = tournament_id;
    }

    @Override
    public String toString() {
        return "BowlCareer{" + "stats_id=" + stats_id + ", matches=" + matches + ", innings=" + innings + ", balls=" + balls + ", wkts=" + wkts + ", bbi_wkts=" + bbi_wkts + ", bbi_runs=" + bbi_runs + ", bbm_wkts=" + bbm_wkts + ", bbm_runs=" + bbm_runs + ", runs=" + runs + ", fivewkts=" + fivewkts + ", tenwkts=" + tenwkts + ", tournament_id=" + tournament_id + '}';
    }

}
