-- Pair 1
INSERT INTO `routines` VALUES (NULL, 'دریافت شماره دورکاری', '', 101);
SET @last_idGetRemote = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.getQueueNum', @last_idGetRemote, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.getQueueNum', 'queueNumber', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 2
INSERT INTO `routines` VALUES (NULL, 'افزایش تعداد پاسخگویی دورکاری', '', 101);
SET @last_idAdded = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.addCount', @last_idAdded, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.addCount', 'xid,DIALSTATUS', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 3
INSERT INTO `routines` VALUES (NULL, 'در حال مکالمه دورکاری', '', 101);
SET @last_idTalk = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.inUse', @last_idTalk, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.inUse', 'xid', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 4
INSERT INTO `routines` VALUES (NULL, 'کال فایل دورکاری', '', 101);
SET @last_idFile = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.createCallFile', @last_idFile, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.createCallFile', 'CALLERID(num)', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 5
INSERT INTO `routines` VALUES (NULL, 'دریافت شماره مشتری دورکاری', '', 101);
SET @last_idGetCustomer = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.GetNumberCustomer', @last_idGetCustomer, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.GetNumberCustomer', '', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);


-- Pair 7
INSERT INTO `routines` VALUES (NULL, 'بروزرسانی کال فایل دورکاری', '', 101);
SET @last_idUpdateFile = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.updateCallFiles', @last_idUpdateFile, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.updateCallFiles', 'number,DIALSTATUS,CALLERID(num)', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 8
INSERT INTO `routines` VALUES (NULL, 'درحال مکالمه مشتری دورکاری', '', 101);
SET @last_idTalkCustome = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.flgCustomer', @last_idTalkCustome, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.flgCustomer', 'number', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 9
INSERT INTO `routines` VALUES (NULL, 'دورکاری - صف شخصی', '', 101);
SET @last_idGetQueueRemote = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.getMyQueue', @last_idGetQueueRemote, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.getMyQueue', 'queueNumber', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);


-- IVR

INSERT INTO `ivrs` VALUES 
(null,'دورکاری',2,240,'3006',NULL,NULL,101);
SET @last_idIVR = LAST_INSERT_ID();

INSERT INTO `ivr_details` VALUES 
(10152,'',@last_idIVR,3,'set',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NOW','1000',NULL,NULL,'queueNumber',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10153,'',@last_idIVR,4,'rpc',NULL,NULL,NULL,NULL,NULL,NULL,@last_idAdded,'HANGUP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10154,'',@last_idIVR,5,'rpc',NULL,NULL,NULL,NULL,NULL,NULL,@last_idTalkCustome,'HANGUP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10155,'x',@last_idIVR,7,'rpc',NULL,NULL,NULL,NULL,NULL,NULL,@last_idTalk,'NOW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10156,'',@last_idIVR,9,'set',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NOW','%personalNum%',NULL,NULL,'number',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10157,'',@last_idIVR,11,'dial',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NOW','9%number%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'out','',1011,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10158,'',@last_idIVR,12,'if',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NOW','ANSWER',NULL,NULL,'%DIALSTATUS%',NULL,NULL,NULL,NULL,NULL,NULL,'pattern',NULL,1015,'w',NULL,'',NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10159,'',@last_idIVR,13,'goto',NULL,@last_idIVR,NULL,NULL,NULL,NULL,NULL,'NOW','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10174,'',@last_idIVR,10,'rpc',NULL,NULL,NULL,NULL,NULL,NULL,@last_idTalk,'NOW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10175,'',@last_idIVR,1,'if',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NOW','',NULL,NULL,'%id%',NULL,NULL,NULL,NULL,NULL,NULL,'pattern',NULL,NULL,'',@last_idIVR,'b',NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10177,'b',@last_idIVR,14,'rpc',NULL,NULL,NULL,NULL,NULL,NULL,@last_idTalk,'NOW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10178,'',@last_idIVR,15,'goto',NULL,@last_idIVR,NULL,NULL,NULL,NULL,NULL,'NOW','x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10179,'',@last_idIVR,6,'rpc',NULL,NULL,NULL,NULL,NULL,NULL,@last_idTalk,'HANGUP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10183,'',@last_idIVR,8,'if',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NOW','',NULL,NULL,'%personalNum%',NULL,NULL,NULL,NULL,NULL,NULL,'pattern',NULL,@last_idIVR,'voice',NULL,'',NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10184,'voice',@last_idIVR,16,'playback',NULL,NULL,NULL,NULL,NULL,10124,NULL,'NOW','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10185,'vmail',@last_idIVR,17,'dial',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NOW','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'voicemail','',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101),
(10194,'',@last_idIVR,18,'hangup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NOW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,NULL,'',101);
