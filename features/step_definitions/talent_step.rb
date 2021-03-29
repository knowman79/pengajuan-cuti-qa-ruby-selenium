require_relative '../support/screen_action.rb'
require "test/unit/assertions"
include Test::Unit::Assertions

Given(/^I am on the login screen$/) do
  maximize_browser()
  open_url("https://matrix-3.cloudias79.com/")
  sleep(2)
end

When(/^I login with correct details$/) do
  input_username_login("rf")
  input_password("r123")
end

Then(/^I click login button$/) do
  click_button_login()
  sleep(2)
end

Then(/^I am logged in$/) do
  screenshot("talent-successLogin")
end

#---------------------------------------------------------------------
Then(/^I click button profile$/) do
  click_button_profile()
  sleep(2)
end

Then(/^I click logout button$/) do
  click_button_logout()
  sleep(4)

end
#---------------------------------------------------------------------

When(/^I login with incorrect details$/) do
  input_username_login("talentSalah")
  input_password("talent")
  clear_username_login()
  input_username_login("SalahBaruuuu")
  sleep(6)
end

Then(/^I am not logged in$/) do
  puts 'ga login'
end

And(/^I am informed that my login details are incorrect$/) do
  screenshot("talent-failedLogin")
end
#---------------------------------------------------------------------


Then(/^I click sidebar My Activity$/) do
  click_sidebar_myActivity()
  sleep(3)
end

Then(/^I click button create leave$/) do
  click_button_createLeave()
  $resultBeforeCreate = getLastLeaveID()
end

And(/^popup Create Leave appear$/) do
  sleep(2)
end

Then(/^I input start date$/) do
  input_startDateText("2021-03-27")
end

Then(/^I input end date$/) do
  input_endDateText("2021-03-30")
end

Then(/^I input Address During Leave$/) do
  input_address("bekasi")
  sleep(2)
end

Then(/^I input Contact Number During Leave$/) do
  input_contactNumber('08568742305')
  sleep(2)
end

Then(/^I input Leave Reasons$/) do
  input_leaveReason("medical checkup")
  sleep(2)
end

Then(/^I input Substitute Name During Leave$/) do
  get_Substitute()
  sleep(2)
end

Then(/^I click Submit button$/) do
  button_submit()
end

Then(/^I click Yes Confirm Popup$/) do
  sleep(2)
  screenshot("talent-buttonConfirmCreate")
  button_yes_create()
  log("klik yes create")
end

And(/^popup Create Leave closed$/) do
  $resultAfterCreate = getActualCreateLeaveID()

  log("id sebelum create : ")
  log($resultBeforeCreate)
  log("id setelah create : ")
  log($resultAfterCreate)
  assert_not_equal($resultBeforeCreate, $resultAfterCreate)

  puts "closed popup"
  sleep(4)
end

#---------------------------------------------------------------------

Then(/^I input search "([^"]*)"$/) do |arg|
  search(arg)
  sleep(1)
  scroll_down()
  screenshot("talent-myActivity-search-"+arg)
end


And(/^the data appears$/) do
  sleep(4)
end

#---------------------------------------------------------------------

Then(/^I click details button$/) do
  click_detailsLeave()
end

And(/^leave details appear$/) do
  sleep(4)
  screenshot("talent-leaveDetails")
end

#------------------------------cancel delete leave---------------------------------------

Then(/^I click delete button$/) do
  sleep(5)
  click_iconDelete()
end

And(/^popup confirm delete appear$/) do
  screenshot("talent-popUpConfirmDelete")
  sleep(5)
end

Then(/^I click No, Keep it!$/) do
  click_noKeepIt()
end

And(/^popup Cancel Delete appear$/) do
  screenshot("talent-popUpCancelDelete")
  sleep(2)
end

Then(/^I click OK$/) do
  click_okCancel()
  sleep(2)
end

#---------------------------------------------------------------------

Then(/^I click Clear Button$/) do
  button_clear()
  screenshot("talent-buttonClearSuccess")
end

Then(/^I click Close Button$/) do
  button_close()
end

#--------------------------------edit-----------------------------------

Then(/^I click button edit leave$/) do
  sleep(2)
  button_edit()
end

And(/^popup Edit Leave appear$/) do
  screenshot('talent-popUpEditLeave')
  sleep(2)
end

Then(/^I update start date$/) do
  puts "skip"
end

Then(/^I update end date$/) do
  puts "skip"
end

Then(/^I update Address During Leave$/) do
  puts "skip"
end

Then(/^I update Contact Number During Leave$/) do
  puts "skip"
end

Then(/^I update Leave Reasons$/) do
  input_leaveReason("merayakan ulang tahun")
  sleep(2)
end

Then(/^I update Substitute Name During Leave$/) do
  puts "skip"
end

Then(/^PopUp Confirm Update appear$/) do
  sleep(3)
  screenshot('talent-popUpConfirmUpdate')
end

And(/^popup Edit Leave closed$/) do
  puts 'skip'
  sleep(3)
end

#--------------------------------send-----------------------------------

Then(/^I click button send leave$/) do
  button_send_leave()
end

And(/^popup Confirmation Send Leave appear$/) do
  sleep(2)
  screenshot('talent-popUpConfirmation-sendLeave')
end

And(/^popup Confirmation Send Leave closed$/) do
  sleep(2)
end

#---------------------------------dropdown page-------------------------------

Then(/^I click dropdown page$/) do
  scroll_down()
  click_dropdown_page()
  sleep(3)
end

And(/^select row per\-data$/) do
  select_page_number()
end

Then(/^Data shows as selected row per\-page$/) do
  screenshot('talent-myActivity-pageNumber')
end

#---------------------------------dashboard-------------------------------

Then(/^I click sidebar Dashboard$/) do
  click_sidebar_dashboard()
end

Then(/^I click details dashboard button$/) do
  click_details_byClass()
end

#---------------------------------search dashboard-------------------------------

Then('I input search {string} on Dashboard') do |string|
  scroll_down()
  search_dashboard(string)
  sleep(2)
  screenshot('talent-search-dashboard-'+string)
end

#----------------------------Delete Leave------------------------------------

Then(/^I click Yes, delete it!$/) do
  button_yes_delete_it()
  sleep(1)
end

And(/^popup Success Delete appear$/) do
  sleep(2)
  screenshot('talent-delete-success-popUp')

  assert(message_success_deleted().text.include?('Your file has been deleted.'))

  click_ok_popUp_successDelete()
end

#-----------------------------Cancel Leave-----------------------------------

Then(/^I click button cancel leave$/) do

  button_cancel_leave()
  log('click cancel')

  sleep(2)
end

And(/^popup Confirmation Cancel Leave appear$/) do
  screenshot('talent-popUp-cancelLeave')
  sleep(2)
end

And(/^message Data Cancelled Successfully appear$/) do
  log('current status cancel : ')
  log(getLastStatusForCancel())

  # expectedCancelStatus = getLastStatusForCancel()
  # assert_true(expectedCancelStatus)
  sleep(3)
  log(message_success_canceled().text.include?('Data has been successfully canceled'))

  assert(message_success_canceled().text.include?('Data has been successfully canceled'))

  sleep(1)
  screenshot('talent-data cancelled successfully')
end

#----------------------------------------------------------------

