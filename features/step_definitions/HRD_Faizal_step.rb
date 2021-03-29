require_relative '../support/screen_action.rb'

Given('HRD_Matrix open matrix-3.cloudias79.com') do
  maximize_browser()
  open_url("https://matrix-3.cloudias79.com/")
  sleep(2)
  screenshot("loginscreen_hrd")
end

Then('HRD_Matrix input username {string}') do |username|
  input_username_login(username)
  screenshot("username_hrd")
end

Then('HRD_Matrix input password {string}') do |password|
  input_password(password)
  screenshot("password_hrd")
end

Then(/^HRD_Matrix click login button$/) do
  sleep(5)
  click_button_login()
  sleep(5)
  screenshot("button_login_hrd")
end

Then(/^HRD_Matrix click my activity$/) do
  sleep(5)
  click_sidebar_my_activity()
  sleep(5)
  screenshot("my_activity_page_hrd")
end

Then(/^HRD_Matrix click create leave$/) do
  click_button_create_Leave()
  screenshot("button_create_leave_hrd")
end

Then(/^HRD_Matrix input start date$/) do
  input_start_date("2021-03-25")
  screenshot("start_date_hrd")
end

Then(/^HRD_Matrix input end date$/) do
  input_end_date("2021-03-26")
  screenshot("start_date_hrd")
end

Then(/^HRD_Matrix input address during leave$/) do
  input_address_leave("bekasi")
  sleep(2)
  screenshot("input_address_during_leave_hrd")
end

Then(/^HRD_Matrix input contact number during leave$/) do
  input_contact_number_leave('08568742305')
  sleep(2)
  screenshot("input_contact_number_during_leave_hrd")
end

Then(/^HRD_Matrix input leave reasons$/) do
  input_leave_reason("medical checkup")
  sleep(2)
  screenshot("input_leave_reasons_hrd")
end

Then(/^HRD_Matrix input subtitute name during leave$/) do
  get_substitute_leave()
  sleep(2)
  screenshot("input_subtitute_name_during_leave_hrd")
end

Then(/^HRD_Matrix click submit$/) do
  $browser.find_element(:name, 'submit').send_keys(:enter)
  sleep(3)
  screenshot("button_submit_hrd")
end

Then(/^HRD_Matrix click yes confirm popup$/) do
  $browser.find_element(:xpath, "/html/body/div[2]/div/div[3]/button[1]" ).click()
  screenshot("button_yes_popup_create_leave_hrd")
  sleep(10)
  screenshot("create_leave_page_hrd")
end