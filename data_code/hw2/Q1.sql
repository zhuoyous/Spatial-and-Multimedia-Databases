-- live oracle sql

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum, startTime));

create or replace trigger booking_tri 
before insert on projectroombookings 
for each row 
declare  
diff int := 0; 
get_booked int := 0; 
begin 
select :new.starttime-:new.endtime into diff from dual;     
if diff > 0 then 
    raise_application_error(-20001,'start time cannot > end time！'); 
end if; 
 
select count(*) into get_booked from projectroombookings where roomnum=:new.roomnum  
and not (:new.startTime>=endTime or :new.endTime<=startTime); 
 
if  get_booked > 0 then  
    raise_application_error(-20001,'the room is booked！'); 
end if; 
 
if  
:new.starttime<'7' or :new.starttime>'18' or  
:new.endtime<'7' or :new.endtime>'18' 
then  
    raise_application_error(-20001,'start time not earlier than 7am and end time not later than 18！'); 
end if; 
 
end;

--Since we want to know whether the room is occupied or not, we should set up a trigger.
--In the trigger, I declare two variables. One is the difference between start time and end time. One is the value where we can see the status of the room.
--For the difference: it is designed as stat time - end time, if it is larger than 0, then we know it is an error because start time cannot larger than end time. After that, this will raise one error message. 
--As for another variable, we test for the same room if whether it contains the same time interval. If it does, it means it is already booked, so that other people cannot book this room. If they do, this will raise one error message.
--For the last, it is just simply making sure start time cannot earlier than 7 and end time cannot later than 18, which means 7-18 is the open time. As for the other time, students cannot book it.