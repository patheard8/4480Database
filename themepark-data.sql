/************************************************************************/
/*																		*/
/*	CSC 4480 Organization of Databases - Final Project					*/
/*	Louis Pitingolo, Henry Zinn, Pat Heard								*/
/*	Theme Park Data                     								*/
/*																		*/
/************************************************************************/

-- Park Zones
INSERT INTO park_zone VALUES ('1','Cedar Rapids', '20-JUL-2015');
INSERT INTO park_zone VALUES ('2','Magic Kingdom', '1-OCT-1971');
INSERT INTO park_zone VALUES ('3','Great Adventure', '1-OCT-1982');
INSERT INTO park_zone VALUES ('4','Glove World', '15-MAR-2000');

-- Park Attractions
INSERT into attraction VALUES 
  ('1','Fiery Fist o Pain','Coaster','5-JUL-2007','open','4');
INSERT into attraction VALUES 
  ('2','Tunnel of Glove','Family ride','9-JUN-2004','open','4');
INSERT into attraction VALUES 
  ('3','El Toro','Coaster','4-AUG-1990','closed','3');  
INSERT into attraction VALUES 
  ('4','Dippin Dots','Food','4-JUL-1985','open','3'); 
INSERT into attraction VALUES 
  ('5','Mystic Force','Coaster','16-SEP-1977','open','2'); 
INSERT into attraction VALUES 
  ('6','Jungle Fury Safari','Family ride','21-OCT-1979','closed','2'); 
INSERT into attraction VALUES 
  ('7','Johnny Rockets','Food','25-DEC-1981','open','2'); 
  
-- Park Employees
INSERT INTO employee VALUES 
  ('1','Pat','J','Heard','Ride Operator','08-AUG-1998','123 Wallaby Way','40000');
INSERT INTO employee VALUES 
  ('2','Louis','G','Pitingolo','Chef','29-SEP-1999','456 Sesame Street','80000');
INSERT INTO employee VALUES 
  ('3','Henry','T','Zinn','Custodian','1-JAN-2000','124 Conch Street','60000');
INSERT INTO employee VALUES 
  ('4','Ron','J','Swanson','Manager','25-MAR-1969','34 Miracle Street','100000');
INSERT INTO employee VALUES 
  ('4','Albert','B','Henderson','Manager','5-NOV-1966','490 Lancaster Ave','100000');
INSERT INTO employee VALUES 
  ('4','Thomas','B','Henderson','Manager','5-NOV-1966','490 Lancaster Ave','100000');
INSERT INTO employee VALUES 
  ('4','Albert','B','Henderson','Manager','5-NOV-1966','490 Lancaster Ave','100000');
-- Employee Assignments
INSERT INTO works_on VALUES ('1','1'); -- Pat works on Fist o Pain

-- Park Customers
INSERT INTO customer VALUES ('1','John','Smith','Day pass');
INSERT INTO customer VALUES ('2','Donatello','Halfshell','Day pass');
INSERT INTO customer VALUES ('3','Michelangelo','Halfshell','Day pass');
INSERT INTO customer VALUES ('4','Raphael','Halfshell','Day pass');
INSERT INTO customer VALUES ('5','Leonardo','Halfshell','Day pass');
INSERT INTO customer VALUES ('6','Blossom','Powerpuff','Day pass');
INSERT INTO customer VALUES ('7','Bubbles','Powerpuff','Day pass');
INSERT INTO customer VALUES ('8','Buttercup','Powerpuff','Day pass');
INSERT INTO customer VALUES ('9','Eugene','Krabs','Day pass');
INSERT INTO customer VALUES ('10','Sheldon','Plankton','Day pass');

-- Guest Activity Log
INSERT INTO activitylog VALUES ('1','4','21-JUL-2020 12:20:00');
INSERT INTO activitylog VALUES ('4','1','21-JUL-2020 12:20:00');
INSERT INTO activitylog VALUES ('7','2','21-JUL-2020 12:20:00');
INSERT INTO activitylog VALUES ('3','6','21-JUL-2020 12:20:00');
INSERT INTO activitylog VALUES ('10','5','21-JUL-2020 12:20:00');


