*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
Resource       ../PageObject/login.robot

*** Variables ***
#Object Login
${url_sign_in_amazon}       https://amazon.com/gp/sign-in.html
${url_home_amazon}          https://www.amazon.com/
${continue_button}          css=#continue
${login_email}              css=#ap_email
${user_password}            css=#ap_password
${submit_Sign_In}           css=#signInSubmit


#Object Home page amazon
${humberger_button}         css=#nav-hamburger-menu
${man_fashion_button}       xpath=//div[.="Men's Fashion"]

#Object Man Fashion page
${man_clothing_button}      xpath=//ul[@class='hmenu hmenu-visible hmenu-translateX']//a[.='Clothing']
${man_clothing_first}       //span[.="Hanes Men's 5-Pack Sports-Inspired Cool Dri Boxer Brief"]
${sign_out_button}          xpath=//div[contains(text(),'Sign In')]
${select_size}              //span[@id='dropdown_selected_size_name']//span[@class='a-dropdown-prompt']
${dropdown_small}           //a[.='Small']
${dropdown_size_5}       //a[.='5']
${select_amount}            xpath=//span[@class='a-dropdown-label']
${select_amount_2}          css=#quantity_1
${select_amount_1}          css=#quantity_0
${add_cart_button}          css=#add-to-cart-button
@{search_field}             css=#twotabsearchtextbox  women’s sneakers
${search_button}            xpath=//div[@class='nav-search-submit nav-sprite']//input[@class='nav-input']
${sneakers_1}               xpath=//span[contains(text(),"adidas Women's Cloudfoam Pure Running Shoe")]
${amount_check}             xpath=//div[@class='a-row a-spacing-micro']//span[contains(text(),'(3 items):')]
${cart}                     css=#hlb-view-cart-announce
${amount_reduce}            css=#a-autoid-2-announce
${dropdown}                 css=#dropdown1_1
${check_out}                xpath=//input[@name='proceedToRetailCheckout']
