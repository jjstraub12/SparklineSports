using System;

namespace Straub.Data.Tables
{
    public interface INcaamSchedule
    {
        double? Season { get; set; }
        string TeamId { get; set; }
        double? Gno { get; set; }
        DateTime? GameDate { get; set; }
        string GameID { get; set; }
        string GameTime { get; set; }
        string Network { get; set; }
        string GameType { get; set; }
        string Loc { get; set; }
        string OppId { get; set; }
        string Opponent { get; set; }
        string WL { get; set; }
        double? TmScore { get; set; }
        double? OppScore { get; set; }
        string OT { get; set; }
        string Arena { get; set; }
        DateTime? GameDateTime { get; set; }
        double? AwayTeamAP { get; set; }
        double? AwayTeamCoach { get; set; }
        string AwayTeamId { get; set; }
        string AwayTeam { get; set; }
        string AwayConf { get; set; }
        double? HomeTeamAP { get; set; }
        double? HomeTeamCoach { get; set; }
        string HomeTeamId { get; set; }
        string HomeTeam { get; set; }
        string HomeConf { get; set; }
        string Winner { get; set; }
        double? WinScore { get; set; }
        double? LoseScore { get; set; }
        string Favorite { get; set; }
        double? Spread { get; set; }
        double? OverUnder { get; set; }
    }
}