/**************************************************************/
/*                                                            */
/*    CSC 4480 Organization of Databases - Final Project      */
/*    Louis Pitingolo, Henry Zinn, Pat Heard                  */
/*    Theme Park Data                                         */
/*                                                            */
/**************************************************************/

-- Query 1: Employees at Glove World
select E.EmployeeId, E.FirstName, E.LastName
from PEmployee E left outer join Works_On W on E.EmployeeId = W.EmployeeId
where W.AttractionId in (select A.AttractionId
                        from Attraction A
                        where A.ZoneId = '4')
order by E.EmployeeId asc;

-- Query 2: Checking open attractions in Cedar Rapids
select AttractionName, CurrStatus
from Attraction
where CurrStatus = 'open' and ZoneId = '1';

-- Query 3: Find Customers In The Park After 5 PM
select CustomerId, FName, LName
from Customer
where CustomerId in (select CustomerId
                    from ActivityLog
                    where AtrTime >= TO_DATE('2020/07/21 17:00:00', 'yyyy/mm/dd hh24:mi:ss'))
order by CustomerId asc;