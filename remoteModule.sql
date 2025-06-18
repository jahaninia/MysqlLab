-- Pair 1
INSERT INTO `routines` VALUES (NULL, 'دریافت شماره دورکاری', '', 101);
SET @last_id = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.getQueueNum', @last_id, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.getQueueNum', 'queueNumber', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 2
INSERT INTO `routines` VALUES (NULL, 'افزایش تعداد پاسخگویی دورکاری', '', 101);
SET @last_id = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.addCount', @last_id, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.addCount', 'xid,DIALSTATUS', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 3
INSERT INTO `routines` VALUES (NULL, 'در حال مکالمه دورکاری', '', 101);
SET @last_id = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.inUse', @last_id, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.inUse', 'xid', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 4
INSERT INTO `routines` VALUES (NULL, 'کال فایل دورکاری', '', 101);
SET @last_id = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.createCallFile', @last_id, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.createCallFile', 'CALLERID(num)', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 5
INSERT INTO `routines` VALUES (NULL, 'دریافت شماره مشتری دورکاری', '', 101);
SET @last_id = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.GetNumberCustomer', @last_id, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.GetNumberCustomer', '', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);


-- Pair 7
INSERT INTO `routines` VALUES (NULL, 'بروزرسانی کال فایل دورکاری', '', 101);
SET @last_id = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.updateCallFiles', @last_id, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.updateCallFiles', 'number,DIALSTATUS,CALLERID(num)', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 8
INSERT INTO `routines` VALUES (NULL, 'درحال مکالمه مشتری دورکاری', '', 101);
SET @last_id = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.flgCustomer', @last_id, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.flgCustomer', 'number', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);

-- Pair 9
INSERT INTO `routines` VALUES (NULL, 'دورکاری - صف شخصی', '', 101);
SET @last_id = LAST_INSERT_ID();
INSERT INTO routine_details 
VALUES (NULL, 'support.getMyQueue', @last_id, 'XML-RPC', 'agentBridge', 1, 1000, 1000,
'http://localhost/work/queus.php', 'support.getMyQueue', 'queueNumber', '', '', 'TEXT', 1,
'', '', NULL, 'MySQL', '', '', NULL, '', 1000, 'PERSISTENT', '', 101);
