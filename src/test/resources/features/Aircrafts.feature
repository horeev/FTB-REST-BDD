

Feature: Testing FTB REST API AIRCRAFTS resource
  Clients should be able to READ/CREATE/UPDATE/DELETE an aircraft record.

  Scenario: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=12
    Then aircraft data to be manufacturer='Su' and model='Su-24' and number of seats=494

  Scenario: Create an aircraft
    Given FTB is up and running and the tests are configured
    ## When Specify new item data and call the API
    ## Then CHECK!

  Scenario: Get specific aircraft data by number of seats
    Given FTB is up and running and the tests are configured
    When 1 client gets details of Aircraft number of seats=888
    Then returned aircraft data to be manufacturer='Test1' and model='Test1' and number of seats=""


  Scenario: Create an aircraft with null number of seats
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='test' and model='test' and null number of seats=''
    Then returned aircraft data to be manufacturer='test' and model='test' and number of seats=''
    When client gets details of just created Aircraft
    Then aircraft data to be manufacturer='Test1' and model='Test1' and number of seats=''