CREATE TABLE IF NOT EXISTS radacct(
  RadAcctId bigint(21) NOT NULL auto_increment,
  AcctSessionId varchar(32) NOT NULL default '',
  AcctUniqueId varchar(32) NOT NULL default '',
  UserName varchar(64) NOT NULL default '',
  Realm varchar(64) NOT NULL default '',
  NASIPAddress varchar(15) NOT NULL default '',
  NASPortId int(12) default NULL,
  NASPortType varchar(32) default NULL,
  AcctStartTime datetime NOT NULL default '0000-00-00 00:00:00',
  AcctStopTime datetime NOT NULL default '0000-00-00 00:00:00',
  AcctSessionTime int(12) default NULL,
  AcctAuthentic varchar(32) default NULL,
  ConnectInfo_start varchar(32) default NULL,
  ConnectInfo_stop varchar(32) default NULL,
  AcctInputOctets bigint(12) default NULL,
  AcctOutputOctets bigint(12) default NULL,
  CalledStationId varchar(50) NOT NULL default '',
  CallingStationId varchar(50) NOT NULL default '',
  AcctTerminateCause varchar(32) NOT NULL default '',
  ServiceType varchar(32) default NULL,
  FramedProtocol varchar(32) default NULL,
  FramedIPAddress varchar(15) NOT NULL default '',
  AcctStartDelay int(12) default NULL,
  AcctStopDelay int(12) default NULL,
  XAscendSessionSrvKey varchar(64) default NULL,
  PRIMARY KEY  (RadAcctId),
  KEY UserName (UserName),
  KEY FramedIPAddress (FramedIPAddress),
  KEY AcctSessionId (AcctSessionId),
  KEY AcctUniqueId (AcctUniqueId),
  KEY AcctStartTime (AcctStartTime),
  KEY AcctStopTime (AcctStopTime),
  KEY NASIPAddress (NASIPAddress)
)TYPE=MyISAM