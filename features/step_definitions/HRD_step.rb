require_relative '../support/screen_action.rb'

Given('HRD open matrix-3.cloudias79.com') do
    maximize_browser()
    open_url("https://matrix-3.cloudias79.com/")
    sleep(2)
    screenshot("loginscreen_hrd")
end

Then('HRD input username {string}') do |username|
    input_username_login(username)
    screenshot("username_hrd")
end

Then('HRD input password {string}') do |password|
    input_password(password)
    screenshot("password_hrd")
end

Then('HRD click login button') do
    sleep(5)
    click_button_login()
    sleep(5)
    screenshot("button_login_hrd")
end

Then('HRD click menu logout') do
    sleep(5)
    click_menu_logout()
    sleep(5)
    screenshot("menu_logout_hrd")
end

Then('HRD click logout button') do
    sleep(5)
    click_logout_button()
    sleep(5)
    screenshot("logout_hrd")
end

Then('HRD click my activity') do
    sleep(5)
    click_sidebar_my_activity()
    sleep(5)
    screenshot("my_activity_page_hrd")
end

Then('HRD hapus username') do
    delete_username_login()
    sleep(2)
    screenshot("clear_username_hrd")
    sleep(2)
end

Then('HRD hapus password') do
    delete_password_login()
    sleep(2)
    screenshot("clear_password_hrd")
    sleep(2)
end

Then('HRD show password') do
    show_password()
    sleep(2)
    screenshot("show_password")
    sleep(2)
end

Then('HRD type the keyword {string}') do |keyword|
    sleep(5)
    input_search_keyword(keyword)
    scroll_down()
    sleep(2)
    screenshot("hrd_search_dashboard#{keyword}")
end

Then('HRD type the keyword in my activity {string}') do |keyword|
    sleep(5)
    input_search_myactivity_keyword(keyword)
    scroll_down()
    sleep(2)
    screenshot("hrd_search_myactivity_#{keyword}")
end

Then('HRD type the keyword spv {string}') do |keyword|
    sleep(5)
    input_search_spv(keyword)
    scroll_down()
    sleep(2)
    screenshot("hrd_search_spv_#{keyword}")
end


Then('HRD click supervisor') do
    sleep(5)
    click_sidebar_supervisor()
    sleep(10)
    screenshot("supervisor_page_hrd")
end

Then('HRD click hrd') do
    sleep(5)
    click_sidebar_hrd()
    sleep(10)
    screenshot("hrd_page_hrd")
end

Then('HRD click create leave') do
    sleep(5)
    click_create_leave()
    sleep(10)
    screenshot("hrd_page_hrd")
end

Then('HRD click start date') do
    sleep(5)
    pick_start_date()
    sleep(10)
    screenshot("hrd_page_hrd")
end

Then('HRD click end date') do
    sleep(5)
    pick_end_date()
    sleep(10)
    screenshot("hrd_page_hrd")
end

Then('HRD click submit') do
    scroll_down()
    sleep(5)
    submit_create_leave()
    sleep(10)
    screenshot("hrd_page_hrd")
end

