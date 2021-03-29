$sidebar_myActivity = '//*[@id="layout"]/div/div/nav/div[1]/div[2]/div/a[2]'
$button_createLeave = 'createLeave'
$popUpStartCalendar = '//*[@id="app"]/div[4]'
$leave_details = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[1]/button'
$cancel_delete = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/tbody/tr[7]/td[8]/button[1]'
$button_NoKeepIt = '/html/body/div[2]/div/div[3]/button[3]'
$button_okCancel = '/html/body/div[2]/div/div[3]/button[1]'
$field_substitute = '//*[@id="app"]/div[3]/div/div/div[2]/form/div[1]/div/div/div[9]/div/div/div[1]/div[1]/div[1]'
$sidebar_dashboard = '//*[@id="layout"]/div/div/nav/div[1]/div[2]/div/a[1]'
$message_success_canceled = '//*[@id="swal2-title"]'

def click_iconDelete()
  scroll_down()
  $browser.find_element(:name, "deleteButton108" ).click()
end

def button_edit()
  $browser.find_element(:name, "editButton87" ).click()
end

def button_send_leave()
  $browser.find_element(:name, "sendButton88" ).click()
end

def button_cancel_leave()
  scroll_down()
  $browser.find_element(:name, "cancelButton79" ).click()
end

def click_sidebar_myActivity()
  $browser.find_element(:xpath, $sidebar_myActivity ).click()
end

def click_sidebar_dashboard()
  $browser.find_element(:xpath, $sidebar_dashboard ).click()
end

def click_button_createLeave()
  $browser.find_element(:name, $button_createLeave ).click()
end

def input_startDateText(startDate)
  $browser.find_element(:name, "startDateText" ).send_keys(startDate)
  sleep(1)
end

def input_endDateText(endDate)
  $browser.find_element(:name, 'endDateText' ).send_keys(endDate)
  sleep(1)
end

def input_address(address)
  $browser.find_element(:name, "address" ).send_keys(address)
end

def input_contactNumber(phone)
  $browser.find_element(:name, "phone" ).send_keys(phone)
end

def input_leaveReason(reason)
  $browser.find_element(:name, "reasons" ).send_keys(:control, 'a', :backspace)
  $browser.find_element(:name, "reasons" ).send_keys(reason)
end

def search(search)
  $browser.find_element(:name, "searchActivity" ).send_keys(search)
end

def search_dashboard(search)
  $browser.find_element(:name, "searchSummary" ).send_keys(search)
end

def click_detailsLeave()
  $browser.find_element(:xpath, $leave_details ).click()
end

def click_noKeepIt()
  $browser.find_element(:xpath, $button_NoKeepIt ).click()
end

def click_okCancel()
  $browser.find_element(:xpath, $button_okCancel).click()
end

def get_Substitute()
  $browser.find_element(:name, "reasons" ).send_keys(:tab, :enter)
  sleep(2)
  $browser.find_element(:xpath, '//div[contains(text(), "Afina - Project")]').click()
end

def button_submit()
  $browser.find_element(:name, 'submit').send_keys(:enter)
  sleep(3)
end

def button_yes_create()
  $browser.find_element(:xpath, "/html/body/div[2]/div/div[3]/button[1]" ).click()
end

def button_clear()
  $browser.find_element(:name, 'clear').send_keys(:enter)
  sleep(3)
end

def button_close()
  $browser.find_element(:name, 'clear').send_keys(:tab, :enter)
  sleep(3)
end

def click_details_byClass()
  scroll_down()
  sleep(1)
  $browser.find_element(:xpath, '//button[@class = "v-icon notranslate v-data-table__expand-icon v-icon--link mdi mdi-chevron-down theme--light"]').click()
  scroll_down()
end

def click_ok_popUp_successDelete()
  $ok = '/html/body/div[2]/div/div[3]/button[1]'
  $browser.find_element(:xpath, $ok).click()
end

def button_yes_delete_it()
  $yes = '/html/body/div[2]/div/div[3]/button[1]'
  $browser.find_element(:xpath, $yes).click()
end

def message_success_canceled()
  # $browser.find_element(:xpath, "//h2[contains(text(),'Data has been successfully canceled')]")
  # $browser.find_element(:id, "swal2-title")
  $browser.find_element(:xpath, $message_success_canceled)

end

def message_success_deleted()
  msg = '//*[@id="swal2-content"]'
  $browser.find_element(:xpath, msg)
end

def click_dropdown_page()
  scroll_down()
  sleep(2)
  list = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[2]/div[1]/div/div/div/div[1]/div[2]/div/i'
  $browser.find_element(:xpath, list).click()
end

def select_page_number()
  sleep(2)
  $browser.action.send_keys(:arrow_down, :enter).perform
  sleep(3)
end


