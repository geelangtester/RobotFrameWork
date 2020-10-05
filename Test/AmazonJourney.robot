*** Settings ***
Library             SeleniumLibrary
Resource            ../Resource/common/common.robot
Resource            ../Resource/PageObject/login.robot
Resource            ../Resource/PageObject/homepage.robot
Suite Setup         Begin web test
Suite Teardown      End web test
Documentation       Pomona amazon web test
...                 Change directory to Robot-Framework-Pomona
...                 Run "robot -d Results --variable BROWSER:gc test/Pomona.robot" to run in chrome browser

*** Variable ***
${BROWSER}  gc

*** Test Cases ***
User Find Shirts items in Men’s Fashion category
    [Tags]  Amazon
    User able to visit homepage amazaon
    User able click humberger button
    User able click man fashion button
    User able click man clothing button
    User able click first item man clothing button

User Select first available product and add to cart with quantity as 2.
    User able choose size available
    User able add quantity
    User able add product to cart

User search for “women’s sneakers” from search bar
    [Tags]  Amazon
    User able search women’s sneakers
    User able choose first sneakers

User Open the shopping cart and reduce the quantity of the shirts to 1.
    [Tags]  Amazon
    User able add sneakers to cart
    User able to open cart and reduce quantity shirt

User Proceed to checkout.
    [Tags]  Amazon
    User able to proceed to checkout

User Sign in Amazon
    [Tags]  Amazon
    User able open amazon
    User able input email
    User able continue
    User able input password
    User submit credential
