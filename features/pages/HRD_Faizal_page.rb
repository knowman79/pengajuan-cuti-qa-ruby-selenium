$button_create_Leave = 'createLeave'

def click_button_create_Leave()
  $browser.find_element(:name, $button_create_Leave ).click()
end

def input_start_date(startDate)
  $browser.find_element(:name, "startDateText" ).send_keys(startDate)
  sleep(1)
end

def input_end_date(endDate)
  $browser.find_element(:name, 'endDateText' ).send_keys(endDate)
  sleep(1)
end

def input_address_leave(address)
  $browser.find_element(:name, "address" ).send_keys(address)
end

def input_contact_number_leave(phone)
  $browser.find_element(:name, "phone" ).send_keys(phone)
end

def input_leave_reason(reason)
  $browser.find_element(:name, "reasons" ).send_keys(reason)
end

def get_substitute_leave()
  $browser.find_element(:name, "reasons" ).send_keys(:tab, :enter)
  sleep(2)
  $browser.find_element(:xpath, '//div[contains(text(), "Lutfi - Project")]').click()
end

def button_submit_leave()
  $browser.find_element(:name, 'submit').send_keys(:enter)
  sleep(3)
end

def button_yes_create_leave()
  $browser.find_element(:xpath, "/html/body/div[2]/div/div[3]/button[1]" ).click()
end