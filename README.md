# AgriCare

## An Animal Healthcare Service Management System

AgriCare is a C# Windows Forms-based animal healthcare service management system designed to connect farmers with veterinary doctors and manage animal health-related services.

## Main Features

- User registration and login
- Role-based access for Admin, Manager, Doctor and Farmer
- Farmer can report animal health problems
- Manager can manage reported problems and assign doctors
- Doctor can view assigned problems and handle them
- Doctor payment management
- Doctor rating and review system
- Service request management
- Report and problem management
- User management
- SQL Server database integration

## User Roles

### Admin
- Manage users
- Approve registrations
- Manage system users

### Manager
- Manage reported animal problems
- Assign doctors
- Manage service requests

### Doctor
- View assigned animal problems
- Handle reported problems
- Manage doctor-related information and payments
- Receive ratings and reviews

### Farmer
- Register and login
- Report animal health problems
- View service requests
- Make payments
- Track problem status

## Technologies Used

- C#
- Windows Forms
- .NET
- Microsoft SQL Server
- Visual Studio
- GitHub

## Database

The project uses Microsoft SQL Server as the database management system.

Database name: `AgriCareDB`

The database contains tables for users, doctor profiles, animal problems, service requests, doctor payments and doctor reviews.

## Project Structure

- `AgriCare.sln` - Visual Studio solution file
- `AgriCare.csproj` - Project configuration
- `database/schema.sql` - SQL Server database script
- `*.cs` - C# source files
- `*.Designer.cs` - Windows Forms designer files
- `*.resx` - Form resources

## Purpose

The main purpose of AgriCare is to provide a structured digital platform for managing animal healthcare services and communication between farmers, managers and veterinary doctors.
