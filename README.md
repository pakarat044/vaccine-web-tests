# E2E Tests with Robot Framework
> test the 3AM app  https://vaccine-haven.herokuapp.com/

## Testcast
**Testcast 1**: Visit the home page and verify 2 items on the home page.  Don't write tests that depend a lot on the DOM or CSS styles, because those may change.

**Testcast 2**: Visit the home page, then click on (make a reservation button), and create a reservation.  Verify that the registration was created.

**Testcast 3**: Cancel the reservation that you made in the previous test.

| Test ID | Name                                                                | Result | Test case |
|---------|---------------------------------------------------------------------|--------|-----------|
| 1       | Test that can Open Browser the homepage of vaccine-heaven           | PASS   | 1         |
| 2       | Test about verify 2 items on the home page                          | PASS   | 1         |
| 3       | Test that can visit the homepage of vaccine-heaven                  | PASS   | 2         |
| 4       | Test that can click on (make a reservation button)                  | PASS   | 2         |
| 5       | Test that create a reservation                                      | PASS   | 2         |
| 6       | Test about verify that the registration was created                 | PASS   | 2         |
| 7       | Test that can cancel the reservation that you made in the previous. | PASS   | 3         |
| 8       | Test about verify that cancel the reservation                       | PASS   | 3         |



## How to run your tests.

### Installation
```
pip3 install robotframework-seleniumlibrary
```

### Download Chromdriver and set path
#### for Mac
* check own chrome version

    * open chrome -> setting -> About Chrome -> *Version....*

* Download Chromdriver
    * [Download Chromdriver](https://chromedriver.chromium.org/downloads) download the same as a chrome version

* set path 
    * move chromdriver to `/usr/local/bin`

### Run test
* change directory
    ```
    %cd vaccine-web-tests
    ```
* start run test
    ```
    %robot vaccineTest.robot
    ```


## Your answer to this question: 
> which do you think is a better framework for E2E testing of web applications or web services:  Robot Framework or Cucumber with Selenium/HTTP library and JUnit?

Both frameworks have their own set of advantages and disadvantages. Robot Framework is my preferred framework over Cucumber because it is simple to set up, write test cases, run test cases, and simply comprehend the results of each test case.

If you fail the test case, a screenshot will be saved in the folder so you can see and easy to understand.

* Example of output at your terminal
    ![](https://i.imgur.com/2fJ4H2N.png)

    

## What tutorial or online resource(s) did you find most helpful for learning Robot Framework?
* [github of VAV2021](https://github.com/VAV2021/VAV2021/blob/master/robot-framework.md)
* [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Wait%20Until%20Page%20Contains%20Element)
