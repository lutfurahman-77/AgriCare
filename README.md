# AgriCare

## An Animal Healthcare Service Management System

AgriCare is a C# Windows Forms-based animal healthcare service management system designed to connect farmers with veterinary doctors and manage animal health-related services.

## Course Information

- **Course Title:** Object Oriented Programming 2
- **Course Code:** CSC 2210
- **Section:** D
- **Semester:** Summer 2025-26
- **Assignment:** Project
- **University:** American International University-Bangladesh (AIUB)
- **Course Teacher / Supervisor:** DR. MD IFTEKHARUL MOBIN
- 
## Main Features

- User registration and login
- Role-based access for Manager, Doctor and Farmer
- Farmer can report animal health problems
- Doctor can view assigned problems and handle them.If Doctor could not handle it. he can be transfer the problem.
- Doctor payment management
- Doctor rating and review system
- Service request management
- Report and problem management
- User management
- SQL Server database integration

## User Roles

### Manager
- Manage users
- Approve registrations
- Manage reported animal problems
- Manage service requests

### Doctor
- View assigned animal problems
- Handle reported problems
- Manage doctor-related information
- Receive ratings and reviews

### Farmer
- Register and login
- Report animal health problems
- View service requests
- Make payments
- view available doctor
- Track problem status

## Team Members

| Name | ID | Role | Contribution |
|---|---|---|---|
| Lutfur Rahman | 24-57054-1 | Manager | Developed Manager-side functionalities and contributed to overall system development and integration. |
| Md. Jubair Hasan Tamim | 23-51855-2 | Database | Designed and developed the database, including tables, relationships, constraints, and SQL scripts. |
| Asfi Sabrin Neha | 24-56321-1 | Doctor |Developed the Doctor-side functionalities of the system. |
| Md julfiker ahmad Rafi | 23-52116-2 | Farmer |Developed the Farmer-side functionalities of the system. |


## Case Study

AgriCare is an animal healthcare service management system designed to provide a structured digital platform for farmers, veterinary doctors, and managers. In many rural and semi-urban areas, farmers may face difficulties in finding suitable veterinary doctors, reporting animal health problems, receiving professional advice, and keeping track of service requests and payments. AgriCare aims to make this process more organized and accessible through a Windows Forms-based application connected to a Microsoft SQL Server database.

The system has three main roles: Manager, Doctor, and Farmer. Each role has different responsibilities and access to different system functionalities. Farmers are the primary service users of the system. They can register and log in, report animal health problems, view available doctors, select a doctor, choose a service, make payments, track their service requests, and provide ratings and reviews after receiving a completed service.

Doctors are responsible for handling animal healthcare problems assigned to them. A doctor can view assigned problems, handle and complete services, manage doctor-related information, and transfer a problem to another available doctor when necessary. The system also supports doctor ratings and reviews so that farmers can provide feedback about the service they receive.

The Manager is responsible for administrative activities within the system. The Manager can manage user accounts, approve Doctor registrations, set Doctor service fees, manage reported animal problems, monitor service requests, and manage payment records. This helps maintain proper control over the healthcare service process.

The system uses Microsoft SQL Server as its database management system. Information about users, doctor profiles, animal problems, service requests, doctor payments, and doctor reviews is stored in separate database tables. Relationships and constraints are used to maintain data consistency and integrity.

Overall, AgriCare provides a centralized platform for managing animal healthcare services. It reduces the need for manual communication and record keeping while allowing Farmers, Doctors, and Managers to interact with the system according to their responsibilities.


## Functional Requirements

### Manager

1. The Manager shall be able to view and manage Doctor accounts.
2. The Manager shall be able to approve Doctor registrations.
3. The Manager shall be able to set Doctor service fees.
4. The Manager shall be able to view and manage Farmer accounts.
5. The Manager shall be able to manage reported animal problems.
6. The Manager shall be able to monitor service requests.
7. The Manager shall be able to manage payment records.

### Doctor

1. The Doctor shall be able to view assigned animal problems.
2. The Doctor shall be able to handle reported animal problems.
3. The Doctor shall be able to complete assigned services.
4. The Doctor shall be able to transfer problems to another available Doctor when necessary.
5. The Doctor shall be able to manage Doctor-related information.
6. The Doctor shall be able to receive ratings and reviews from Farmers.

### Farmer

1. The Farmer shall be able to register and log in.
2. The Farmer shall be able to report animal health problems.
3. The Farmer shall be able to view available Doctors.
4. The Farmer shall be able to select a Doctor.
5. The Farmer shall be able to select a service.
6. The Farmer shall be able to make service payments.
7. The Farmer shall be able to view and track service requests.
8. The Farmer shall be able to rate and review Doctors after completed services.
9. The Farmer shall be able to log out.

## User Stories

### Manager

- As a Manager, I want to view and manage Doctor accounts so that I can control Doctor access to the system.
- As a Manager, I want to approve Doctor registrations so that only approved Doctors can provide services.
- As a Manager, I want to set Doctor service fees so that service charges can be managed properly.
- As a Manager, I want to manage Farmer accounts so that user information remains organized.
- As a Manager, I want to manage reported animal problems so that reported problems can be monitored.
- As a Manager, I want to monitor service requests so that I can track the progress of healthcare services.
- As a Manager, I want to manage payment records so that service-related payments can be monitored.

### Doctor

- As a Doctor, I want to view my assigned animal problems so that I can understand the problems I need to handle.
- As a Doctor, I want to handle reported animal problems so that I can provide healthcare services.
- As a Doctor, I want to complete assigned services so that Farmers can know when their service is finished.
- As a Doctor, I want to transfer a problem to another available Doctor when necessary so that the Farmer can receive appropriate assistance.
- As a Doctor, I want to manage my professional information so that Farmers can see my service-related details.
- As a Doctor, I want to receive ratings and reviews so that Farmers can provide feedback about my service.

### Farmer

- As a Farmer, I want to register and log in so that I can use the healthcare services.
- As a Farmer, I want to report an animal health problem so that I can request professional assistance.
- As a Farmer, I want to view available Doctors so that I can choose a suitable Doctor.
- As a Farmer, I want to select a Doctor so that my animal problem can be assigned to my preferred Doctor.
- As a Farmer, I want to select a service so that I can choose the required type of healthcare service.
- As a Farmer, I want to make a payment so that I can request the selected service.
- As a Farmer, I want to track my service request so that I can know the current status of my problem.
- As a Farmer, I want to rate and review a Doctor after a completed service so that I can provide feedback.
- As a Farmer, I want to log out so that I can securely end my session.


## UI Navigation Diagram

The UI navigation diagram of the AgriCare system is available in the `docs/diagrams/` folder.

## SQL Schema Diagram

The SQL database schema diagram of AgriCare is available in the `docs/diagrams/` folder.

The database contains six main tables:

- Users
- DoctorProfile
- AnimalProblems
- ServiceRequests
- DoctorPayments
- DoctorReviews

## Database Table Descriptions

### Users

| Column | Data Type | Constraint |
|---|---|---|
| UserID | INT | Primary Key, Identity |
| Name | VARCHAR | NOT NULL |
| Email | VARCHAR | NOT NULL, UNIQUE |
| Password | VARCHAR | NOT NULL |
| Role | VARCHAR | NOT NULL |
| Status | VARCHAR | NOT NULL |

### DoctorProfile

| Column | Data Type | Constraint |
|---|---|---|
| DoctorID | INT | Primary Key, Foreign Key |
| Specialization | VARCHAR | NULL |
| Experience | INT | NULL |
| Rating | DECIMAL | NULL |
| TotalReviews | INT | NULL |
| Fee | DECIMAL | NULL |

### AnimalProblems

| Column | Data Type | Constraint |
|---|---|---|
| ProblemId | INT | Primary Key, Identity |
| FarmerId | INT | Foreign Key, NOT NULL |
| ProblemDescription | VARCHAR | NOT NULL |
| ProblemDate | DATETIME | DEFAULT |

### ServiceRequests

| Column | Data Type | Constraint |
|---|---|---|
| RequestID | INT | Primary Key, Identity |
| FarmerID | INT | Foreign Key, NOT NULL |
| DoctorID | INT | Foreign Key, NOT NULL |
| ProblemID | INT | NOT NULL |
| ServiceType | VARCHAR | DEFAULT |
| RequestStatus | VARCHAR | NOT NULL |
| RequestDate | DATETIME | DEFAULT |

### DoctorPayments

| Column | Data Type | Constraint |
|---|---|---|
| PaymentID | INT | Primary Key, Identity |
| DoctorID | INT | Foreign Key, NOT NULL |
| Amount | DECIMAL | NOT NULL |
| PaymentDate | DATETIME | DEFAULT |
| PaymentStatus | VARCHAR | NOT NULL |

### DoctorReviews

| Column | Data Type | Constraint |
|---|---|---|
| ReviewID | INT | Primary Key, Identity |
| RequestID | INT | UNIQUE, NOT NULL |
| FarmerID | INT | Foreign Key, NOT NULL |
| DoctorID | INT | Foreign Key, NOT NULL |
| Rating | INT | CHECK (1-5) |
| Review | VARCHAR | NULL |
| ReviewDate | DATETIME | DEFAULT |



## SQL Queries

### Doctor Service Summary Query

sql
SELECT
    U.UserID AS DoctorID,
    U.Name AS DoctorName,
    COUNT(SR.RequestID) AS CompletedServices
FROM dbo.Users U
INNER JOIN dbo.ServiceRequests SR
    ON U.UserID = SR.DoctorID
WHERE U.Role = 'Doctor'
  AND SR.RequestStatus = 'Completed'
GROUP BY U.UserID, U.Name
HAVING COUNT(SR.RequestID) > 0
ORDER BY CompletedServices DESC;
GO

This query generates a summary of completed services for each Doctor. It uses an INNER JOIN between the Users and ServiceRequests tables through the Doctor ID. The WHERE clause ensures that only Doctors and completed service requests are considered. The COUNT() function calculates the number of completed services for each Doctor. GROUP BY groups the results by Doctor ID and Doctor name, while HAVING ensures that only Doctors with at least one completed service are included. The results are sorted in descending order according to the number of completed services.



##Project Structure
AgriCare.sln - Visual Studio solution file
AgriCare.csproj - Project configuration
database/schema.sql - SQL Server database script
docs/diagrams/ - UI navigation and SQL schema diagrams
docs/screenshots/ - Windows Forms mockup screenshots
docs/ - Project documentation and report
*.cs - C# source files
*.Designer.cs - Windows Forms designer files
*.resx - Form resources
## Technologies Used

- C#
- Windows Forms
- .NET
- Microsoft SQL Server
- Visual Studio
- GitHub

## Project Report
The complete project report is available in the `docs/` folder.



## Purpose

The main purpose of AgriCare is to provide a structured digital platform for managing animal healthcare services and communication between farmers, managers and veterinary doctors.
