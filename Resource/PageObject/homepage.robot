*** Settings ***
Library        SeleniumLibrary
Resource       ../common/variable.robot

*** Keywords ***
User able to visit homepage amazaon
    go to                            ${url_home_amazon}

User able click humberger button
    click element                    ${humberger_button}

User able scroll in to man fashion
    scroll element into view         ${scroll_bawah}

User able click man fashion button
    click element                    ${man_fashion_button}

User able click man clothing button
    click element                    ${man_clothing_button}

User able click man shirt button
     click element                   ${man_shirt_button}

User able click shirt index 2
     click element                  ${shirt_index_2}

User able choose size available
     click element                  ${select_size}
     click element                  ${dropdown_indx1}

User able add quantity
    click element                   ${select_amount}
    click element                   ${select_amount_2}

User able add product to cart
    click element                   ${add_cart_button}

User able search women’s sneakers
    input text                      @{search_field}
    click element                   ${search_button}

User able choose first sneakers
    click element                   ${sneakers_1}
    click element                   ${select_size}
    click element                   ${dropdown_indx1}

User able add sneakers to cart
    click element                   ${select_amount}
    click element                   ${select_amount_1}
    click element                   ${add_cart_button}

User able to open cart and reduce quantity shirt
    click element                   ${cart}
    click element                   ${amount_reduce}
    click element                   ${dropdown}

User able to proceed to checkout
    click element                   ${check_out}












