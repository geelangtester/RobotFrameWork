*** Settings ***
Library        SeleniumLibrary
Resource       ../common/variable.robot
Resource       ../common/customKeyword.robot

*** Keywords ***
User able to visit homepage amazaon
    go to                            ${url_home_amazon}

User able click humberger button
    Wait and click                   ${humberger_button}

User able click man fashion button
    Wait and click                     ${man_fashion_button}

User able click man clothing button
    Wait and click                     ${man_clothing_button}

User able click first item man clothing button
     Wait and click                    ${man_clothing_first}

User able choose size available
     Wait and click                   ${select_size}
     Wait and click                   ${dropdown_small}

User able add quantity
    Wait and click                    ${select_amount}
    Wait and click                    ${select_amount_2}

User able add product to cart
    Wait and click                    ${add_cart_button}

User able search women’s sneakers
    Wait and input                   @{search_field}
    Wait and click                    ${search_button}

User able choose first sneakers
    Wait and click                    ${sneakers_1}
    Wait and click                    ${select_size}
    Wait and click                    ${dropdown_size_5}

User able add sneakers to cart
    Wait and click                    ${select_amount}
    Wait and click                    ${select_amount_1}
    Wait and click                    ${add_cart_button}

User able to open cart and reduce quantity shirt
    Wait and click                    ${cart}
    Wait and click                    ${amount_reduce}
    Wait and click                    ${dropdown}

User able to proceed to checkout
    Wait and click                    ${check_out}
