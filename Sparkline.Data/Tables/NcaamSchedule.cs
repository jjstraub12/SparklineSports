using System;

namespace Straub.Data.Tables
{
    public class NcaamSchedule : INcaamSchedule
    {
        protected INcaamSchedule _NcaamSchedule;

        public NcaamSchedule()
        {
            _NcaamSchedule = new tbl_Schedule();
        }

        public NcaamSchedule(INcaamSchedule ncaa)
        {
            _NcaamSchedule = ncaa;
        }

        public double? Season
        {
            get { return _NcaamSchedule.Season; }
            set { _NcaamSchedule.Season = value; }
        }
        public string TeamId
        {
            get { return _NcaamSchedule.TeamId; }
            set { _NcaamSchedule.TeamId = value; }
        }
        public double? Gno
        {
            get { return _NcaamSchedule.Gno; }
            set { _NcaamSchedule.Gno = value; }
        }
        public DateTime? GameDate
        {
            get { return _NcaamSchedule.GameDate; }
            set { _NcaamSchedule.GameDate = value; }
        }
        public string GameID
        {
            get { return _NcaamSchedule.GameID; }
            set { _NcaamSchedule.GameID = value; }
        }
        public string GameTime
        {
            get { return _NcaamSchedule.GameTime; }
            set { _NcaamSchedule.GameTime = value; }
        }
        public string Network
        {
            get { return _NcaamSchedule.Network; }
            set { _NcaamSchedule.Network = value; }
        }
        public string GameType
        {
            get { return _NcaamSchedule.GameType; }
            set { _NcaamSchedule.GameType = value; }
        }
        public string Loc
        {
            get { return _NcaamSchedule.Loc; }
            set { _NcaamSchedule.Loc = value; }
        }
        public string OppId
        {
            get { return _NcaamSchedule.OppId; }
            set { _NcaamSchedule.OppId = value; }
        }
        public string Opponent
        {
            get { return _NcaamSchedule.Opponent; }
            set { _NcaamSchedule.Opponent = value; }
        }
        public string WL
        {
            get { return _NcaamSchedule.WL; }
            set { _NcaamSchedule.WL = value; }
        }
        public double? TmScore
        {
            get { return _NcaamSchedule.TmScore; }
            set { _NcaamSchedule.TmScore = value; }
        }
        public double? OppScore
        {
            get { return _NcaamSchedule.OppScore; }
            set { _NcaamSchedule.OppScore = value; }
        }
        public string OT
        {
            get { return _NcaamSchedule.OT; }
            set { _NcaamSchedule.OT = value; }
        }
        public string Arena
        {
            get { return _NcaamSchedule.Arena; }
            set { _NcaamSchedule.Arena = value; }
        }
        public DateTime? GameDateTime
        {
            get { return _NcaamSchedule.GameDateTime; }
            set { _NcaamSchedule.GameDateTime = value; }
        }
        public double? AwayTeamAP
        {
            get { return _NcaamSchedule.AwayTeamAP; }
            set { _NcaamSchedule.AwayTeamAP = value; }
        }
        public double? AwayTeamCoach
        {
            get { return _NcaamSchedule.AwayTeamCoach; }
            set { _NcaamSchedule.AwayTeamCoach = value; }
        }
        public string AwayTeamId
        {
            get { return _NcaamSchedule.AwayTeamId; }
            set { _NcaamSchedule.AwayTeamId = value; }
        }
        public string AwayTeam
        {
            get { return _NcaamSchedule.AwayTeam; }
            set { _NcaamSchedule.AwayTeam = value; }
        }
        public string AwayConf
        {
            get { return _NcaamSchedule.AwayConf; }
            set { _NcaamSchedule.AwayConf = value; }
        }
        public double? HomeTeamAP
        {
            get { return _NcaamSchedule.HomeTeamAP; }
            set { _NcaamSchedule.HomeTeamAP = value; }
        }
        public double? HomeTeamCoach
        {
            get { return _NcaamSchedule.HomeTeamCoach; }
            set { _NcaamSchedule.HomeTeamCoach = value; }
        }
        public string HomeTeamId
        {
            get { return _NcaamSchedule.HomeTeamId; }
            set { _NcaamSchedule.HomeTeamId = value; }
        }
        public string HomeTeam
        {
            get { return _NcaamSchedule.HomeTeam; }
            set { _NcaamSchedule.HomeTeam = value; }
        }
        public string HomeConf
        {
            get { return _NcaamSchedule.HomeConf; }
            set { _NcaamSchedule.HomeConf = value; }
        }
        public string Winner
        {
            get { return _NcaamSchedule.Winner; }
            set { _NcaamSchedule.Winner = value; }
        }
        public double? WinScore
        {
            get { return _NcaamSchedule.WinScore; }
            set { _NcaamSchedule.WinScore = value; }
        }
        public double? LoseScore
        {
            get { return _NcaamSchedule.LoseScore; }
            set { _NcaamSchedule.LoseScore = value; }
        }
        public string Favorite
        {
            get { return _NcaamSchedule.Favorite; }
            set { _NcaamSchedule.Favorite = value; }
        }
        public double? Spread
        {
            get { return _NcaamSchedule.Spread; }
            set { _NcaamSchedule.Spread = value; }
        }
        public double? OverUnder
        {
            get { return _NcaamSchedule.OverUnder; }
            set { _NcaamSchedule.OverUnder = value; }
        }

    }
}
