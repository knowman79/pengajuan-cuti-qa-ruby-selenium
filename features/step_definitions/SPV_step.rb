# require_relative '../support/screen_action.rb'

Given('User open matrix-3.cloudias79.com') do
    maximize_browser()
    open_url("https://matrix-3.cloudias79.com/")
    sleep(2)
    screenshot("loginscreen")
  end
  
  Then('User input username {string}') do |username|
    input_username_login(username)
    screenshot("username")
  end
  
  Then('User input password {string}') do |password|
    input_password(password)
    screenshot("password")
  end
  
  Then('User click login button') do
    sleep(3)
    click_button_login()
    sleep(3)
    screenshot("button_login")
  end
  
  #dashboard
  Then('User click submission date in dashboard') do
    sleep(3)
    click_dashboard_submission()
    sleep(3)
    screenshot("dashboard_submission")
  end
  
  Then('User click leave type in dashboard') do
    sleep(3)
    click_dashboard_leave_type()
    sleep(3)
    screenshot("dashboard_leave_type")
  end
  
  Then('User click start date in dashboard') do
    sleep(3)
    click_dashboard_start_date()
    sleep(3)
    screenshot("dashboard_start_date")
  end
  
  Then('User click end date in dashboard') do
    sleep(3)
    click_dashboard_end_date()
    sleep(3)
    screenshot("dashboard_end_date")
  end
  
  Then('User click duration in dashboard') do
    sleep(3)
    click_dashboard_duration()
    sleep(3)
    screenshot("dashboard_duration")
  end
  
  Then('User click status in dashboard') do
    sleep(3)
    click_dashboard_status()
    sleep(3)
    screenshot("dashboard_status")
  end
  
  Then('User click icon expand in dashboard') do
    sleep(3)
    click_dashboard_expand()
    sleep(3)
    screenshot("dashboard_expand")
  end
  
  #search in dashboard
  Then('User input keyword in dashboard {string}') do |keyword|
    sleep(3)
    input_dashboard_search(keyword)
    scroll_down()
    sleep(3)
    screenshot("dashboard_search")
  end
  
  #my activity
  Then('User click menu my activity') do
    sleep(3)
    click_menu_myactivity()
    sleep(3)
    screenshot("menu_myactivity")
  end
  
  Then('User click submission date in my activity') do
    sleep(3)
    click_myactivity_submission()
    sleep(3)
    screenshot("myactivity_submission")
  end
  
  Then('User click leave type in my activity') do
    sleep(3)
    click_myactivity_leave_type()
    sleep(3)
    screenshot("myactivity_leave_type")
  end
  
  Then('User click start date in my activity') do
    sleep(3)
    click_myactivity_start_date()
    sleep(3)
    screenshot("myactivity_start_date")
  end
  
  Then('User click end date in my activity') do
    sleep(3)
    click_myactivity_end_date()
    sleep(3)
    screenshot("myactivity_end_date")
  end
  
  Then('User click duration in my activity') do
    sleep(3)
    click_myactivity_duration()
    sleep(3)
    screenshot("myactivity_duration")
  end
  
  Then('User click status in my activity') do
    sleep(3)
    click_myactivity_status()
    sleep(3)
    screenshot("myactivity_status")
  end
  
  Then('User click icon expand in my activity') do
    sleep(3)
    click_myactivity_expand()
    sleep(3)
    screenshot("myactivity_expand")
  end
  
  #search in my activity
  Then('User input search activity {string}') do |status|
    sleep(3)
    input_myactivity_search(status)
    sleep(3)
    screenshot("myactivity_search")
  end
  
  #supervisor
  Then('User click menu supervisor') do
    sleep(3)
    click_menu_supervisor()
    sleep(3)
    screenshot("menu_supervisor")
  end
  
  Then('User click name in supervisor') do
    sleep(3)
    click_supervisor_name()
    sleep(3)
    screenshot("supervisor_name")
  end
  
  Then('User click start date in supervisor') do
    sleep(3)
    click_supervisor_start_date()
    sleep(3)
    screenshot("supervisor_start_date")
  end
  
  Then('User click end date in supervisor') do
    sleep(3)
    click_supervisor_end_date()
    sleep(3)
    screenshot("supervisor_end_date")
  end
  
  Then('User click leave type in supervisor') do
    sleep(3)
    click_supervisor_leave_type()
    sleep(3)
    screenshot("supervisor_leave_type")
  end
  
  Then('User click duration in supervisor') do
    sleep(3)
    click_supervisor_duration()
    sleep(3)
    screenshot("supervisor_duration")
  end
  
  Then('User click status in supervisor') do
    sleep(3)
    click_supervisor_status()
    sleep(3)
    screenshot("supervisor_status")
  end
  
  Then('User click icon expand in supervisor') do
    sleep(3)
    click_supervisor_expand()
    sleep(3)
    screenshot("supervisor_expand")
  end
  
  #search in supervisor
  Then('User input search request list {string}') do |keyword|
    sleep(3)
    input_supervisor_search(keyword)
    sleep(3)
    screenshot("supervisor_search")
  end
  
  #approve / reject
  Then('User click approve button') do
    sleep(3)
    click_button_approve()
    sleep(3)
    screenshot("button_approve")
  end
  
  Then('User click reject button') do
    sleep(3)
    click_button_reject()
    sleep(3)
    screenshot("button_reject")
  end
  
  Then('User click yes button') do
    sleep(3)
    click_button_yes()
    sleep(3)
    screenshot("button_yes")
  end
  
  #logout
  Then('User click profil') do
    sleep(3)
    click_profil()
    sleep(3)
    screenshot("profil")
  end
  
  Then('User click logout button') do
    sleep(3)
    click_logout_button()
    sleep(3)
    screenshot("button_logout")
  end