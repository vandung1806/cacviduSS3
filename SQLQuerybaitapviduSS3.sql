USE AdventureWorks2019 -- Sử dụng cơ sở dữ liệu AdventureWorks
--Khai báo biến 
Go
DECLARE @depID --Khai báo biến cục bộ tên là depID kiểu int
SELECT @depID=1  --Gắn giá trị cho biến bằng 1
SELECT Name, GroupName From HumanResources.Department Where Department = @depID
Go

SELECT @@LANGUAGE --hIỂN THỊ THÔNG TIN CỦA BIẾN TOÀN CỤC @@@language, trả lại thông tin ngôn ngữ sử dụng 
SELECT @@VERSION 

Go

--Lấy tổng tất cả giá trị bản ghi trưởng SradardCost thuộc bảng ProducCostHistory
SELECT SUM(StandardCost) From Production.ProducCostHistory

--Tính giá trị trung bình của trường StadardCost thuộc bảng ProducCostHistory
SELECR AVG(StandardCost) FROM Production.ProducCostHistory

--Lấy giá trị lớn nhất của trường StandardCost trong bảng ProductCostHistory
SELECT MAX(StandardCost) FROM Production.ProducCostHistory

--Đếm tổng số bản ghi trong bảng ProductPhoto
SELECT COUNT(*) FROM Production.ProductPhoto

--Lấy ra ngày giờ hệ thống 
SELECT GETDATE()

--Lấy ra giờ hệ thống 
SELECT GETDATE()

--Lấy ra giờ hệ thống 
SELECT DATEPART(hh,GETDATE())

--Định dạng ngày dùng hàm CONVERT
SELECT CONVERT(VarChar()50, GETDATE(), 103)

--Lấy ra định danh của cơ sở dữ liệu
SELECT DB_ID('AdventureWorks')

--Tạo cơ sở dữ liệu
CREATE DATABASE EXAMPLE3

USE EXAMPLE3

--Tạo bảng trong cơ sở dữ liệu
CREATE TABLE Contacts
(MailID VARCHAR()20,
 Name NTEXT,
 TelephoneNumber INT)

 --Thêm 1 cột vào bảng đã có:
ALTER TABLE Contacts ADD Address NVARCHAR(50)

--Thêm dữ liệu vào bảng Contacts:
INSERT INTO Contacts values ('abc@yahoo.com',N'Nguyễn Văn A',9898998,N'Hà Nội')
INSERT INTO Contacts values ('nguyenthiB@yahoo.com',N'Nguyễn Thị B',4329234,N'Hà Nội')
INSERT INTO Contacts values ('tranvanC@yahoo.com',N'Trần Văn C',905243524,N'Hà Nội')
INSERT INTO Contacts values ('trinhvanD@yahoo.com',N'Trịnh Văn D',4563576,N'Hà Nội')

--Lấy ra tất cả bản ghi trong bảng:
SELECT = FROM Contacts

--Xóa bản ghi có mailID=tranvanC@yahoo.com
DELETE FROM Contacts WHERE MailID='tranvanC@yahoo.com'

--Sửa bản ghi có mailID=tranvanD@yahoo.com
UPDATE Contacts SET Name=N'Trịnh Hoàng Long' WHERE MailID='trinhvanD@yahoo.com'



