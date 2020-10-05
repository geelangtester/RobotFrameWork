*** Settings ***
Library             SeleniumLibrary
Resource            ../Resource/common/common.robot
Resource            ../Resource/PageObject/login.robot
Resource            ../Resource/PageObject/homepage.robot
Suite Setup         Begin web test
Suite Teardown      End web test
Documentation       AmazonJourney
...                 Change directory to Robot Framework
...                 Run "robot -d Results --variable BROWSER:gc test/AmazonJourney.robot" to run in chrome browser

*** Variable ***
${BROWSER}  gc

*** Test Cases ***
User Find Shirts items in Men’s Fashion category
    [Tags]  Landing page
    User able to visit homepage amazaon
    User able click humberger button
    User able click man fashion button
    User able click man clothing button
    User able click first item man clothing button

User Select first available product and add to cart with quantity as 2.
    [Tags]  Add to cart
    User able choose size available
    User able add quantity
    User able add product to cart

User search for “women’s sneakers” from search bar
    [Tags]  Search woman snekers
    User able search women’s sneakers
    User able choose first sneakers

User Open the shopping cart and reduce the quantity of the shirts to 1.
    [Tags]  Reduce Qty
    User able add sneakers to cart
    User able to open cart and reduce quantity shirt

User Proceed to checkout.
    [Tags]  Check Out
    User able to proceed to checkout

User Sign in Amazon
    [Tags]  Sign in
    User able open amazon
    User able input email
    User able continue
    User able input password
    User submit credential
