# Warships-Academy

## Table of Contents

- [x] Concept
- [ ] Conception Presentation
- [ ] Database Concept Design
- [x] Database Draft
- [x] UI/UX Design
- [ ] User Stories
- [ ] Use Case Diagram
- [x] Requirements
- [x] Test Cases
- [ ] Final Review

## Concept
[(back to top)](#table-of-contents)

Created as the final project in the Microsoft Software and Systems Academy. My idea for the application came for my love of the Wargaming game World of Warships.
The Concept is to provide the player base a quick reference guide, to allow users to view and compare stats.

## Presentation

## Database Concept Design

## Database Draft
[(back to top)](#table-of-contents)


![Database Script](https://github.com/RJTveit/Warships-Academy/blob/master/WorldOfWarshipsDb(DRAFT).sql)

## UI/UX Design
[(back to top)](#table-of-contents)

### Homepage ![homepage](https://github.com/RJTveit/Warships-Academy/blob/master/UI%20Design/WoWsAcademyHomepage.png?raw=true)

### Split Line Page ![splitchoice](https://github.com/RJTveit/Warships-Academy/blob/master/UI%20Design/WoWsAcademySplitMenu.png?raw=true)

### Ship Display Page ![display](https://github.com/RJTveit/Warships-Academy/blob/master/UI%20Design/WoWsAcademyShipPage.png?raw=true)



## User Stories

## Use Case Diagram

## Requirements
[(back to top)](#table-of-contents)

| ID | Requirements | Test ID |
-----|--------------|----------
1.0.1 | System shall display Nations and Classes on the homepage. | T .1.1 |
1.0.2 | User shall be able to navigate to tables by using the Nation/Class links. | T.1.2 |
1.0.3 | User shall be able to view tables displayed in order by tier. | T.1.3 |
2.0.1 | User shall be able to search for a ship using a search bar. |T.2.1 |
2.0.2 | Search bar will display an error if nothing is returned from the query. | T.2.2 |
2.0.3 | Search results will be listed in a table format with most relevant results first. | T.2.3 |
3.0.1 | User shall be able to select "Details" and view more in-depth information on each ship. | T.3.1 |
3.0.2 | User shall be able to create a "build" by adding on ship specific equipment allowing them to view potential in-game stat changes. | T.3.2 |
4.0.1 | User shall be able to view captain skills and their descriptions in a seperate table. | T.4.1 |

## Test Cases
[(back to top)](#table-of-contents)

Current Testing status:
> Currently 66.7% of Test Cases are passing. The incomplete tests are for features currently under construction. The upcoming sprint will focus on completion of the search bar and creating the "virtual build" enviroment. 

| Test ID | Req. ID | Test Desc. | Test Status | Date Passed |
----------|---------|------------|-------------|--------------
T.1.1 | 1.0.1 | Nations and Class links displayed | Complete | 10/28/2020
T.1.2 | 1.0.2 | Navigate using Class and Nation links | Complete | 10/28/2020
T.1.3 | 1.0.3 | View table data sorted by tier | Complete | 10/28/2020
T.2.1 | 2.0.1 | Searching application using search bar | Partially Complete | 10/31/2020 |
T.2.2 | 2.0.2 | Search Bar returns error message | Incomplete |     |
T.2.3 | 2.0.3 | Search results filtered by most relevant | Complete | 10/31/2020 |
T.3.1 | 3.0.1 | User able to view more in-depth data by selecting "Details" | Partially complete | 10/29/2020 |
T.3.2 | 3.0.2 | User able to create virtual "build" | Incomplete |    |
T.4.1 | 4.0.1 | Users able to view captains skills | Incomplete |    |

Alt-H2 Project Review
[(back to top)](#table-of-contents)


Alt-H3 Project Experience
-----------

> The development lifecycle and supporting documentation can be found above.

Alt-H3 Lessons Learned
----------

### What went right
> After restarting my project in week 16, I was able to successfully create a database and connect to it within Visual Studio. After some initial setbacks with help from the instrcuctor I was able to scaffold the MVC components and begin building the application. 

### What went wrong
> After generating the database the foreign and primary keys did not transfer correctly, this led to problems when trying to query specific rows. 

### What would you change
> As stated above, I changed my project in week 16 back to my original idea after gaining a better understanding of the development tools and programming language. At this point all I would change would be sticking with my original idea so that I had enough time to complete more of the listed requirements.
