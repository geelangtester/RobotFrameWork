Structure Folder
================

**Browser** <br/>
  Folder that contains web browser driver.
  Webdriver available are google chrome, mozilla firefox, edge and internet explorer.

**Resource**
  Folder that contains resource for running testcase.

  In resource folder There are 2 folder common and page object.
  common folder contain keyword that used in other .robot files.
  Page object folder contain user predefined keyword.

**Results**
  Folder that contains report after running testcase.

  There are 3 files generated after running test cases
  `log.html` for logging test case execution
  `output.xml` contain steps that run during execution.
  `report.html` this file reporting results after running testcases.
  
**Test**
  Folder that contains test cases.

Testcase
========

The Test folder contain test case file illustrating walkthrough user in marketplace amazon.

`AmazonJourney.robot`
   This robot file containing steps in test cases.

Test Library
============

The test cases using SeleniumLibrary this library make robotframework can comunicate with browser trough selenium.

Generated results
=================

After `running tests`, you will get report and log in HTML format. 

- `report.html`_
- `log.html`_

Running Test Cases
============

Preconditions
-------------

A precondition for running the tests is having `Robot Framework` installed.
It is most commonly used on Python_ but it works also with Jython (JVM)
and IronPython (.NET). Robot Framework `installation instructions`
cover installation procedure in detail. People already familiar with
installing Python packages and having `pip`_package manager installed, can
simply run the following command::

    pip install robotframework
    pip install robotframework-selenium2library

Add Browser folder to path so robotframework can run browserdriver.

Running tests
-------------

1. change directory to Technical Test - QA Engineer at Pomona

2. executed with the ``robot`` command in terminal ::

   `robot -d results Test/AmazonJourney.robot` this command will run testcase in google chrome.
   `robot -d Results --variable BROWSER:ff test/AmazonJourney.robot` this command will run testcase in firefox browser
   `robot -d Results --variable BROWSER:edge test/AmazonJourney.robot` this command will run testcase in edge browser
   `robot -d Results --variable BROWSER:ie test/AmazonJourney.robot` this command will run testcase in internet explorer browser
