# Statement of Work: 
_Database for Classical Music Source_

Gregory Bowe

UMUC DBST 651

Version 1


## Executive Summary

The Classical Music Supply is a local music supply store with three locations in the metro area. Currently, each store orders products and sells services independently of one another. If a product is sold out at one location, an employee has to call the others in order to see if it&#39;s available at those locations.  Services, such as music lessons and repairs are offered at individual locations as well without communications between the stores. Sales reports, expenses, employee reports are created by gathering data from the individual stores by email and putting them together using accounting software and spreadsheet.

The proposed database is part of a larger system to modernize and improve product ordering, payroll, reporting, and communication. This will be accomplished by creating a database to capture these items and allow stores to locate products, services, and employees in real time. This database will automatically generate reports and allow users to create custom reports. The database will be accessible through cash registers and networked PCs.

### 1. Database Objectives

- Provide access to users at all store locations.
- Record product details such as SKU, brand, name, description, category, price, availability, and quantity available.
- Record service details such as service name, description, offered by, availability, and price.
- Allow users to enter and edit product information
- Allow users to enter and edit service availability
- Allow users to enter and edit employee information including name, availability, wage, and time off.
- Automatically update product availability when item is purchased at checkout
- Automatically update service availability when service is scheduled at checkout
- Automatically record employee sales numbers
- Allow access to product information in real time
- Allow users to access to real-time reporting on products and services
- Allow users to create automatic reports based on custom parameters
- Automatically generate reports for products, services, and employees
- Allow limited access to in-store cash registers
- Allow access to connected devices

### 2. Project Scope

#### 2.1 In Scope

- Configuration, setup, and creation of database on existing server (whether cloud, private, VPS, or local).
- Creating the relational database, entities, tables, relationships, and basic reporting templates.
- Populating database with sample data representing all entities and their relationships.
- QA and testing.
- Onsight user training.
- Training documentation
- System upgrades as need for 2 years
- Networking to existing point-of-sale system
- REST API and GUI

#### 2.2 Out of Scope

- Creation of custom reports
- Data entry
- Customized UI
- New point-of-sale system

### 3. Database Goals, Expectations, and Deliverables

#### 3.1 Goals

- Reduce the cost and time of inventory management
- Reward high performing sales associates
- Improve customer experience by providing real-time product information
- Improve customer experience by providing service availability from all retail locations
- Improve sales and employee reporting
- Reduce accounting errors

#### 3.2 Expectations

- The database will be accessible using Windows or Mac computers.
- Products will be subtracted from inventory at point of sale.
- The database will be scalable.
- Queries and reports will meet or exceed service level agreements.
- The database will automatically back-up daily.
- The database will be available 24/7 except as required for maintenance and upgrades

#### 3.3 Deliverables

- Working relational database
- User roles, access, and permission levels set-up
- User interfaces for each role and level
- Connection to existing point-of-sale system
- Documentation (Requirements, Business, System, Acceptance Criteria, SLA, and others)
- User training sessions
- User training material

#### 3.4 Benefits

This database will allow the company to expand, offer better customer service, improve employee morale, offer more services, and increase long-term company goals.

**3.4.1 Quantitative** benefits include improved accounting, inventory management, and employee management, reduction in hours and labor cost for accounting functions.

**3.4.2 Qualitative** benefits include improvements in employee morale, reduction of frustration due to communication limitations, and better customer experiences.

### 4. Project Hardware and Software Tools

#### 4.1 Diagramming Tool

ER Assistant Version 2.0 and Microsoft Visio Professional (Windows 10 only). 

[Final ERD is here](dbprojects/MusicSource-DBST/Bowe_Gregory_ERDv2.png)


#### 4.2 Database and Access Method

- **Database** : Oracle 12c

- **Admin access:** SQL Developer Version: 18.2.0.183.1748 using Windows 10 or Mac OS version 10.12.6

- **Data Definition Language (DDL) statements and Data Manipulation Language (DML) statements:** Structured Query Language (SQL)