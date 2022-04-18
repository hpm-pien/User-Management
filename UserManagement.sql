
CREATE database UserManagement
go

use UserManagement
go

CREATE table tblUser(
Username nvarchar(50) primary key not null,
Password nvarchar(50),
PhotoCode nvarchar(100),
Name nvarchar(50),
Email nvarchar(50),
PhoneNumber nvarchar(15),
Role bit,
Status nvarchar(20)
)

ALTER TABLE tblUser
ALTER COLUMN Password nvarchar(100);

drop table tblUser



Alter Table tblUser Drop column PromotionID

insert into tblUser values('admin','admin','admin.png','adminRole','namtcpse140427@gmail.com','0783440489',1,'Active')
insert into tblUser values('pien','pien','pien.png','UserRole','atbglad@gmail.com','0937764390',0,'Active')


Create table tblListPromotion(
Username nvarchar(50),
DateAdded date,
PromotionID nvarchar(30)
)


CREATE table tblPromotion(
PromotionID nvarchar(30) primary key,
RankValue float
)

Select Username, Password, PhotoCode, Name, Email, PhoneNumber, Role, Status
from tblUser
Where Name like '%r%'


delete tblListPromotion where Username = 'admin'

UPDATE tblUser
SET Password = '', set PhotoCode = '', set Name = '', set Email = '',
set PhoneNumber = '', set Role = '', Set Status = ''
WHERE Username = 'pien'



Select *
from tblPromotion a, tblListPromotion b
where b.Username = 'admin' AND b.PromotionID = 1

SELECT tblListPromotion.Username, tblListPromotion.DateAdded,tblListPromotion.PromotionID, tblPromotion.RankValue
FROM tblListPromotion
INNER JOIN tblPromotion ON tblListPromotion.PromotionID=tblPromotion.PromotionID

where PromotionID='MilkTea';


Select Username,DateAdded, PromotionID
from tblListPromotion
where PromotionID = 'MilkTea'


Select PromotionID, RankValue
from tblPromotion


insert into tblListPromotion values('test','04/17/2022','alu',5);


UPDATE tblListPromotion SET Value = '' WHERE Username = '';

Delete tblListPromotion WHERE Username ='';





Alter Table tblListPromotion Add Value Float


select *
from tblListPromotion


SELECT PromotionID, DateAdded
FROM tblListPromotion
where Username = 'pien'

SELECT Username, DateAdded, PromotionID, Value
FROM tblListPromotion
ORDER BY DATE_FORMAT(DateAdded, "17-04-2022") DESC