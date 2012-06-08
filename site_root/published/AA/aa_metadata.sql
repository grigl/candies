DROP TABLE IF EXISTS COMPANY;
CREATE TABLE COMPANY (
  COM_NAME varchar(30) NOT NULL default '',
  COM_ADDRESSSTREET varchar(50) default NULL,
  COM_ADDRESSCITY varchar(30) default NULL,
  COM_ADDRESSSTATE varchar(30) default NULL,
  COM_ADDRESSZIP varchar(10) NOT NULL default '',
  COM_ADDRESSCOUNTRY varchar(30) default NULL,
  COM_CONTACTPERSON varchar(50) default NULL,
  COM_EMAIL varchar(50) default NULL,
  COM_PHONE varchar(50) default NULL,
  COM_FAX varchar(50) default NULL,
  PRIMARY KEY  (COM_NAME)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS CURRENCY;
CREATE TABLE CURRENCY (
  CUR_ID char(3) NOT NULL default '',
  CUR_NAME varchar(50) NOT NULL default '',
  PRIMARY KEY  (CUR_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO CURRENCY VALUES ('USD', 'US Dollar');

DROP TABLE IF EXISTS WBS_USER;
CREATE TABLE WBS_USER (
  U_ID varchar(20) NOT NULL default '',
  C_ID integer,
  U_PASSWORD varchar(36) default NULL,
  U_STATUS smallint(6) default '0',
  U_SETTINGS text,
  U_SENDMAIL smallint(2) default '0',
  U_ACCESSTYPE CHAR(5) default 'IND',
  PRIMARY KEY  (U_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS CONTACT;
CREATE TABLE CONTACT (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CT_ID` int(11) NOT NULL DEFAULT '1',
  `CF_ID` varchar(255) DEFAULT NULL,
  `C_CREATEDATETIME` datetime DEFAULT NULL,
  `C_CREATECID` int(11) DEFAULT NULL,
  `C_CREATEAPP_ID` varchar(3) DEFAULT NULL,
  `C_CREATEMETHOD` varchar(20) DEFAULT NULL,
  `C_CREATESOURCE` varchar(255) DEFAULT NULL,
  `C_MODIFYDATETIME` datetime DEFAULT NULL,
  `C_MODIFYCID` int(11) DEFAULT NULL,
  `C_LANGUAGE` varchar(3) DEFAULT NULL,
  `C_SUBSCRIBER` smallint(6) DEFAULT NULL,    
  `C_FULLNAME` varchar(255) DEFAULT NULL,
  `C_FIRSTNAME` varchar(50) DEFAULT NULL,
  `C_MIDDLENAME` varchar(50) DEFAULT NULL,  
  `C_LASTNAME` varchar(50) DEFAULT NULL,
  `C_TITLE` varchar(50) DEFAULT NULL,
  `C_COMPANY` varchar(255) DEFAULT NULL,  
  `C_EMAILADDRESS` varchar(255) NOT NULL DEFAULT '',
  `C_PHOTO` text DEFAULT NULL,  
  `C_HOMEPHONE` varchar(50) DEFAULT NULL,
  `C_WORKPHONE` varchar(50) DEFAULT NULL,
  `C_MOBILEPHONE` varchar(50) DEFAULT NULL,
  `C_HOMEFAX` varchar(50) DEFAULT NULL,
  `C_WORKFAX` varchar(50) DEFAULT NULL,
  `C_ICQ` varchar(20) DEFAULT NULL,
  `C_MSN` varchar(50) DEFAULT NULL,
  `C_SKYPE` varchar(50) DEFAULT NULL,
  `C_HOMESTREET` varchar(255) DEFAULT NULL,
  `C_HOMECITY` varchar(50) DEFAULT NULL,
  `C_HOMESTATE` varchar(50) DEFAULT NULL,  
  `C_HOMEPOSTALCODE` varchar(50) DEFAULT NULL,
  `C_HOMECOUNTRY` varchar(100) DEFAULT NULL,
  `C_BIRTHDAY` date DEFAULT NULL,   
  `C_PERSONALWEBPAGE` varchar(255) DEFAULT NULL,
  `C_WORKSTREET` varchar(255) DEFAULT NULL,
  `C_WORKCITY` varchar(50) DEFAULT NULL,
  `C_WORKSTATE` varchar(50) DEFAULT NULL,  
  `C_WORKPOSTALCODE` varchar(50) DEFAULT NULL,
  `C_WORKCOUNTRY` varchar(50) DEFAULT NULL,
  `C_WORKWEBPAGE` varchar(255) DEFAULT NULL,
  `C_OTHERINFO` text DEFAULT NULL,
  PRIMARY KEY (`C_ID`),
  KEY `CF_ID` (`CF_ID`),
  KEY `C_FIRSTNAME` (`C_FIRSTNAME`),
  KEY `C_LASTNAME` (`C_LASTNAME`),
  KEY `C_EMAILADDRESS` (`C_EMAILADDRESS`),  
  KEY `C_FULLNAME` (`C_FULLNAME`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS CFOLDER;
CREATE TABLE CFOLDER(
  CF_ID VARCHAR(255) NOT NULL,
  CF_ID_PARENT VARCHAR(255),
  CF_NAME VARCHAR(255),
  CT_ID CHAR(3),
  CF_STATUS int NOT NULL default '0',
  PRIMARY KEY(CF_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS UGROUP;
CREATE TABLE UGROUP (
  `UG_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `UG_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UG_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS UGROUP_USER;
CREATE TABLE UGROUP_USER(
  UG_ID INT(11) NOT NULL,
  U_ID VARCHAR(20) NOT NULL,
  PRIMARY KEY(UG_ID, U_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS APPSETTINGS;
CREATE TABLE APPSETTINGS(
  APP_ID                  CHAR(2) NOT NULL,
  SETTINGS                TEXT,
  PRIMARY KEY(APP_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS DISK_USAGE;
CREATE TABLE DISK_USAGE
(
  DU_USER_ID VARCHAR(20) NOT NULL,  
  DU_APP_ID CHAR(10) NOT NULL,  
  DU_SIZE BIGINT NULL,  
  PRIMARY KEY (DU_USER_ID, DU_APP_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS USER_DISK_QUOTA;
CREATE TABLE USER_DISK_QUOTA
(
  UDQ_USER_ID VARCHAR(20) NOT NULL, 
  UDQ_APP_ID CHAR(10) NOT NULL,  
  UDQ_SIZE INT NULL,  
  PRIMARY KEY (UDQ_USER_ID, UDQ_APP_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS SMS_BALANCE;
CREATE TABLE SMS_BALANCE (
  SMS_USER_ID varchar(20) NOT NULL default '',
  SMS_SENT int(11) NOT NULL default '0',
  SMS_BALANCE decimal(15,2) default NULL,
  PRIMARY KEY  (SMS_USER_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS SMS_CREDIT_HISTORY;
CREATE TABLE SMS_CREDIT_HISTORY (
  SMSG_ID int(11) NOT NULL auto_increment,
  SMSG_DATETIME datetime NOT NULL default '0000-00-00 00:00:00',
  SMSG_USER_ID varchar(20) NOT NULL,
  SMSG_QTY decimal(15,2) default NULL,
  SMSG_QS char(10) NOT NULL,
  SMSG_SOURCE varchar(20) NOT NULL,
  PRIMARY KEY  (SMSG_ID),
  KEY DATE (SMSG_DATETIME)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS SMS_HISTORY;
CREATE TABLE SMS_HISTORY (
  SMSH_ID int(11) NOT NULL auto_increment,
  SMSH_DATETIME datetime NOT NULL default '0000-00-00 00:00:00',
  SMSH_USER_ID varchar(20) NOT NULL,
  SMSH_PHONE varchar(20) NOT NULL,
  SMSH_WIDTH int(11) NOT NULL,
  SMSH_QTY int(11) NOT NULL,
  SMSH_APP varchar(5) NOT NULL,
  SMSH_MODULEID char(30) NOT NULL,
  SMSH_TEXT text NOT NULL,
  SMSH_MSGID char(50) default NULL,
  SMSH_CHARGE decimal(15,2) default NULL,
  SMSH_CHARGED tinyint(4) NOT NULL default '0',
  SMSH_UNLIM tinyint(4) NOT NULL default '0',
  SMSH_STATUS varchar(20) default NULL,
  SMSH_STATUS_TEXT varchar(100) default NULL,
  PRIMARY KEY  (SMSH_ID),
  KEY DATETIME (SMSH_DATETIME)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS U_ACCESSRIGHTS;
CREATE TABLE U_ACCESSRIGHTS (
  AR_ID varchar(20) NOT NULL default '',
  AR_PATH varchar(255) NOT NULL default '',
  AR_OBJECT_ID varchar(50) NOT NULL default '',
  AR_VALUE int(11) NOT NULL default '0',
  AR_AUX text,
  PRIMARY KEY  (AR_PATH,AR_OBJECT_ID,AR_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS UG_ACCESSRIGHTS;
CREATE TABLE UG_ACCESSRIGHTS (
  AR_ID varchar(20) NOT NULL default '',
  AR_PATH varchar(255) NOT NULL default '',
  AR_OBJECT_ID varchar(50) NOT NULL default '',
  AR_VALUE int(11) NOT NULL default '0',
  AR_AUX text,
  PRIMARY KEY  (AR_PATH,AR_OBJECT_ID,AR_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS WG_PARAM;
CREATE TABLE WG_PARAM (
  WG_ID int(11) NOT NULL default '0',
  WGP_NAME varchar(50) NOT NULL default '',
  WGP_VALUE text NOT NULL,
  PRIMARY KEY  (WG_ID,WGP_NAME)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS WG_WIDGET;
CREATE TABLE WG_WIDGET (
  `WG_ID` int(11) NOT NULL auto_increment,
  `WT_ID` varchar(30) NOT NULL default '',
  `WST_ID` varchar(30) NOT NULL default '',
  `WG_FPRINT` varchar(100) NOT NULL default '',
  `WG_DESC` text NOT NULL,
  `WG_USER` VARCHAR (20) NOT NULL default '',
  `WG_LANG` VARCHAR( 5 ) DEFAULT 'eng' NOT NULL,
  `WG_CREATED_FROM` VARCHAR(25) DEFAULT '' NOT NULL,
  `WG_CREATED_BY` varchar(100) NOT NULL default '',
  `WG_CREATED_DATETIME` datetime NOT NULL default '0000-00-00 00:00:00',
  `WG_MODIFIED_BY` varchar(100) NOT NULL default '',
  `WG_MODIFIED_DATETIME` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`WG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS ACCESSRIGHTS_LINK;
CREATE TABLE ACCESSRIGHTS_LINK (
`AR_PATH` VARCHAR( 255 ) NOT NULL ,
`AR_OBJECT_ID` VARCHAR( 50 ) NOT NULL ,
`LINK_AR_PATH` VARCHAR( 255 ) NOT NULL ,
`LINK_AR_OBJECT_ID` VARCHAR( 50 ) NOT NULL ,
PRIMARY KEY ( `AR_PATH` , `AR_OBJECT_ID` ) ,
INDEX ( `LINK_AR_PATH` , `LINK_AR_OBJECT_ID` )
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS USER_SETTINGS;
CREATE TABLE `USER_SETTINGS` (
`U_ID` VARCHAR( 20 ) NOT NULL ,
`APP_ID` CHAR( 2 ) NOT NULL ,
`NAME` VARCHAR( 255 ) NOT NULL ,
`VALUE` TEXT NOT NULL ,
PRIMARY KEY ( `U_ID` , `APP_ID` , `NAME` )
) ENGINE = MYISAM CHARSET=utf8;

DROP TABLE IF EXISTS MMMESSAGE;
CREATE TABLE MMMESSAGE (
  MMM_ID int(11) NOT NULL default '0',
  MMF_ID varchar(255) NOT NULL default '0',
  MMM_STATUS int(11) NOT NULL default '0',
  MMM_DATETIME datetime default NULL,
  MMM_PRIORITY int(11) NOT NULL default '0',
  MMM_FROM varchar(128) default NULL,
  MMM_REPLY_TO varchar(128) default NULL,
  MMM_TO text,
  MMM_CC text,
  MMM_BCC text,
  MMM_LISTS varchar(255) default NULL,
  MMM_SUBJECT varchar(255) default NULL,
  MMM_LEAD varchar(255) NOT NULL default '',
  MMM_CONTENT text,
  MMM_ATTACHMENT text,
  MMM_IMAGES text,
  MMM_SIZE int(11) NOT NULL,
  MMM_USERID varchar(20) NOT NULL default '',
  MMM_APP_ID char(2) NOT NULL default 'MM',
  MMM_HEADER text,
  PRIMARY KEY (MMM_ID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS MMMSENTTO;
CREATE TABLE MMMSENTTO (
  MMM_ID int(11) NOT NULL default '0',
  MMMST_EMAIL varchar(100) NOT NULL default '',
  MMMST_STATUS varchar(255) NOT NULL default '0',
  PRIMARY KEY (MMM_ID, MMMST_EMAIL)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS MMSENT;
CREATE TABLE MMSENT (
  MMS_DATE date NOT NULL,
  MMS_COUNT int(11) default NULL,
  PRIMARY KEY (MMS_DATE)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS CONTACTFIELD;
CREATE TABLE CONTACTFIELD (
  `CF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CF_DBNAME` varchar(50) DEFAULT NULL,
  `CF_TYPE` varchar(50) NOT NULL DEFAULT '',
  `CF_OPTIONS` text,
  `CF_NAME` text,
  `CF_STD` tinyint(1) NOT NULL DEFAULT '0',
  `CF_SECTION` int(11) DEFAULT NULL,
  `CF_SORTING` int(11) NOT NULL,
  PRIMARY KEY (`CF_ID`),
  UNIQUE KEY `CF_DBNAME` (`CF_DBNAME`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS CONTACTTYPE;
CREATE TABLE CONTACTTYPE (
  `CT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CT_NAME` text NOT NULL,
  `CT_OPTIONS` text NOT NULL,
  `CT_STD` tinyint(1) NOT NULL,
  PRIMARY KEY (`CT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS EMAIL_CONTACT;
CREATE TABLE `EMAIL_CONTACT` (
  `EC_ID` int(11) NOT NULL,
  `EC_EMAIL` varchar(255) NOT NULL,
  PRIMARY KEY (`EC_ID`,`EC_EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS UNSUBSCRIBER;
CREATE TABLE UNSUBSCRIBER
(
  ENS_EMAIL varchar(255) not null,
  ENS_DATETIME datetime not null,  
  PRIMARY KEY (ENS_EMAIL)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO SMS_BALANCE(SMS_USER_ID, SMS_SENT, SMS_BALANCE) VALUES ( '$SYSTEM', '0', %SMS_BALANCE% );
INSERT INTO SMS_CREDIT_HISTORY(SMSG_DATETIME, SMSG_USER_ID, SMSG_QTY, SMSG_QS, SMSG_SOURCE ) VALUES ( NOW(), '$SYSTEM', %SMS_BALANCE%, 'SET', 'ONCREATE' );

INSERT INTO CONTACTFIELD 
(`CF_ID`, `CF_DBNAME`, `CF_TYPE`, `CF_OPTIONS`, `CF_NAME`, `CF_STD`, `CF_SECTION`, `CF_SORTING`)
VALUES
(1, 'C_FIRSTNAME', 'VARCHAR', '50', 'First name', 2, 8, 1),
(2, 'C_MIDDLENAME', 'VARCHAR', '50', 'Middle name', 2, 8, 2),
(3, 'C_LASTNAME', 'VARCHAR', '50', 'Last name', 2, 8, 3),
(4, 'C_TITLE', 'VARCHAR', '50', 'Title', 2, 8, 4),
(5, 'C_COMPANY', 'VARCHAR', '255', 'Company', 1, 8, 5),
(6, 'C_EMAILADDRESS', 'EMAIL', '255', 'Email', 1, 8, 6),
(7, 'C_PHOTO', 'IMAGE', '96', 'Photo', 1, 8, 7),
(8, NULL, 'SECTION', '{"search":1}', 'Main section', 1, NULL, 1),
(9, 'C_HOMEPHONE', 'VARCHAR', '50', 'Home phone', 0, 14, 1),
(10, 'C_WORKPHONE', 'VARCHAR', '50', 'Work phone', 0, 14, 2),
(11, 'C_MOBILEPHONE', 'MOBILE', '50', 'Mobile phone', 0, 14, 3),
(12, 'C_HOMEFAX', 'VARCHAR', '50', 'Home fax', 0, 14, 4),
(13, 'C_WORKFAX', 'VARCHAR', '50', 'Work fax', 0, 14, 5),
(14, NULL, 'SECTION', '', 'Phone numbers', 0, NULL, 2),
(15, 'C_ICQ', 'VARCHAR', '50', 'ICQ', 0, 18, 1),
(16, 'C_MSN', 'VARCHAR', '50', 'MSN', 0, 18, 2),
(17, 'C_SKYPE', 'VARCHAR', '50', 'Skype', 0, 18, 3),
(18, NULL, 'SECTION', '', 'Instant messengers', 0, NULL, 3),
(19, 'C_HOMESTREET', 'VARCHAR', '255', 'Street address', 0, 24, 1),
(20, 'C_HOMECITY', 'VARCHAR', '50', 'City', 0, 24, 2),
(21, 'C_HOMESTATE', 'VARCHAR', '50', 'State', 0, 24, 3),
(22, 'C_HOMEPOSTALCODE', 'VARCHAR', '50', 'Postal code', 0, 24, 4),
(23, 'C_HOMECOUNTRY', 'VARCHAR', '50', 'Country', 0, 24, 5),
(24, NULL, 'SECTION', '', 'Home address', 0, NULL, 4),
(25, 'C_BIRTHDAY', 'DATE', '', 'Date of birth', 0, 27, 1),
(26, 'C_PERSONALWEBPAGE', 'URL', '255', 'Personal website', 0, 27, 2),
(27, NULL, 'SECTION', '', 'Personal information', 0, NULL, 5),
(28, 'C_WORKSTREET', 'VARCHAR', '255', 'Street address', 0, 34, 1),
(29, 'C_WORKCITY', 'VARCHAR', '50', 'City', 0, 34, 2),
(30, 'C_WORKSTATE', 'VARCHAR', '50', 'State', 0, 34, 3),
(31, 'C_WORKPOSTALCODE', 'VARCHAR', '50', 'Postal code', 0, 34, 4),
(32, 'C_WORKCOUNTRY', 'VARCHAR', '50', 'Country', 0, 34, 5),
(33, 'C_WORKWEBPAGE', 'URL', '255', 'Company website', 0, 34, 6),
(34, NULL, 'SECTION', '', 'Work address', 0, NULL, 6),
(35, 'C_OTHERINFO', 'TEXT', '', 'Other info', 0, 36, 1),
(36, NULL, 'SECTION', '', 'Misc', 0, NULL, 7);

INSERT INTO `CONTACTTYPE` (`CT_ID`, `CT_NAME`, `CT_OPTIONS`, `CT_STD`) VALUES
(1, 'Person', '{"fname_required":["1","3"],"fname_format":["!1! !2! !3!"],"fields":[["1"],["2"],["3"],["4"],["5"],["6"],["7"],["9"],["10"],["11"],["12"],["13"],["15"],["16"],["17"],["19"],["20"],["21"],["22"],["23"],["25"],["26"],["28"],["29"],["30"],["31"],["32"],["33"],["35"]]}', 1),
(2, 'Company', '{"fname_required":["5"],"fname_format":["!5!"],"fields":[["5"],["6"],["7"],["10"],["11"],["13"],["15"],["16"],["17"],["28"],["29"],["30"],["31"],["32"],["33"],["35"]]}', 1);

