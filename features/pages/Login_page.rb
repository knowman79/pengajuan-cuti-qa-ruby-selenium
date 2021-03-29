$input_username = 'username'
$input_password = 'password'
$button_login = '//*[@id="form-login"]/div/form/div[2]/div[4]/button'

def input_username_login(username)
    $browser.find_element(:name, $input_username).send_keys(username)
end

def clear_username_login()
    $browser.find_element(:name, $input_username).send_keys(:control, 'a', :backspace)
end

def delete_username_login()
    $browser.find_element(:name, $input_username).send_keys(:control, 'a', :backspace)
end

def delete_password_login()
    $browser.find_element(:id, $input_password).send_keys(:control, 'a', :backspace)
end

def input_password(password)
    $browser.find_element(:id, $input_password).send_keys(password)
end

def clear_password_login()
    $browser.find_element(:id, $input_password).send_keys(:control, 'a', :backspace)
end

def click_button_login()
    $browser.action.send_keys("\n").perform
end

def show_password()
    $browser.find_element(:id, $input_password).send_keys(:tab, :enter)
end

def click_button_logout()
    $browser.find_element(:name, "buttonLogout" ).send_keys("\n")
end

def click_button_profile()
    $browser.find_element(:name, "buttonProfile" ).click()
end

