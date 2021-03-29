#login
$input_username = 'username'
$input_password = 'password'
$button_login = '//*[@id="form-login"]/div/form/div[2]/div[4]/button'

#menu dashboard
$dashboard_submission = '//*[@id="layout"]/div/main/div/div/div/div/div[3]/div/div/div/div[2]/div[1]/table/thead/tr/th[2]/span'
$dashboard_leave_type = '//*[@id="layout"]/div/main/div/div/div/div/div[3]/div/div/div/div[2]/div[1]/table/thead/tr/th[3]/span'
$dashboard_start_date = '//*[@id="layout"]/div/main/div/div/div/div/div[3]/div/div/div/div[2]/div[1]/table/thead/tr/th[4]/span'
$dashboard_end_date = '//*[@id="layout"]/div/main/div/div/div/div/div[3]/div/div/div/div[2]/div[1]/table/thead/tr/th[5]/span'
$dashboard_duration = '//*[@id="layout"]/div/main/div/div/div/div/div[3]/div/div/div/div[2]/div[1]/table/thead/tr/th[6]/span'
$dashboard_status = '//*[@id="layout"]/div/main/div/div/div/div/div[3]/div/div/div/div[2]/div[1]/table/thead/tr/th[7]/span'
$dashboard_expand = '//*[@id="layout"]/div/main/div/div/div/div/div[3]/div/div/div/div[2]/div[1]/table/tbody/tr/td[1]/button'

#search in dashboard
$dashboard_search ='searchSummary'

#menu my Activity
$menu_myactivity = '//*[@id="layout"]/div/div/nav/div[1]/div[2]/div/a[2]/div[2]/div'
$myactivity_submission = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[2]/span'
$myactivity_leave_type = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[3]/span'
$myactivity_start_date = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[4]/span'
$myactivity_end_date = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[5]/span'
$myactivity_duration = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[6]/span'
$myactivity_status = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[7]/span'
$myactivity_expand = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[1]/button'

#search in my activity
$myactivity_search = 'searchActivity'

#supervisor
$menu_supervisor = '//*[@id="layout"]/div/div/nav/div[1]/div[2]/div/a[3]/div[2]/div'
$supervisor_name = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[2]/span'
$supervisor_start_date = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[3]/span'
$supervisor_end_date = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[4]/span'
$supervisor_leave_type = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[5]/span'
$supervisor_duration = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[6]/span'
$supervisor_status = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/thead/tr/th[7]/span'
$supervisor_expand = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[1]/button'
$button_approve = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[8]/div/button[1]/span/h6'
$button_reject = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[8]/div/button[2]/span/h6'
$button_yes = '/html/body/div[2]/div/div[3]/button[1]'

#search in supervisor
$supervisor_search = 'searchOnSpv'

#logout
$profil  = '//*[@id="layout"]/div/div/header/div[1]/div[3]/button/span/div/div[2]/i'
$button_logout = '//*[@id="list-item-101"]/div[2]/div'

#Login
def input_username_login(username)
  $browser.find_element(:name, $input_username).send_keys(username)
end

def clear_username_login()
  $browser.find_element(:name, $input_username).clear
end

def input_password(password)
  $browser.find_element(:id, $input_password).send_keys(password)
end

def clear_password_login()
  $browser.find_element(:id, $input_password).clear
end

def click_button_login()
  $browser.action.send_keys("\n").perform
end

#dashboard
def click_dashboard_submission()
  $browser.find_element(:xpath, $dashboard_submission).click
end

def click_dashboard_leave_type()
  $browser.find_element(:xpath, $dashboard_leave_type).click
end

def click_dashboard_start_date()
  $browser.find_element(:xpath, $dashboard_start_date).click
end

def click_dashboard_end_date()
  $browser.find_element(:xpath, $dashboard_end_date).click
end

def click_dashboard_duration()
  $browser.find_element(:xpath, $dashboard_duration).click
end

def click_dashboard_status()
  $browser.find_element(:xpath, $dashboard_status).click
end

def click_dashboard_expand()
  $browser.find_element(:xpath, $dashboard_expand).click
end

#search in dashboard
def input_dashboard_search(status)
  $browser.find_element(:name, $dashboard_search).send_keys(status)
end

def clear_dashboard_search()
  $browser.find_element(:name, $dashboard_search).clear
end

#my activity
def click_menu_myactivity()
  $browser.find_element(:xpath, $menu_myactivity).click
end

def click_myactivity_submission()
  $browser.find_element(:xpath, $myactivity_submission).click
end

def click_myactivity_leave_type()
  $browser.find_element(:xpath, $myactivity_leave_type).click
end

def click_myactivity_start_date()
  $browser.find_element(:xpath, $myactivity_start_date).click
end

def click_myactivity_end_date()
  $browser.find_element(:xpath, $myactivity_end_date).click
end

def click_myactivity_duration()
  $browser.find_element(:xpath, $myactivity_duration).click
end

def click_myactivity_status()
  $browser.find_element(:xpath, $myactivity_status).click
end

def click_myactivity_expand()
  $browser.find_element(:xpath, $myactivity_expand).click
end

#search in my activity
def input_myactivity_search(status)
  $browser.find_element(:name, $myactivity_search).send_keys(status)
end

def clear_myactivity_search()
  $browser.find_element(:name, $myactivity_search).clear
end

#supervisor
def click_menu_supervisor()
  $browser.find_element(:xpath, $menu_supervisor).click
end

def click_supervisor_name()
  $browser.find_element(:xpath, $supervisor_name).click
end

def click_supervisor_start_date()
  $browser.find_element(:xpath, $supervisor_start_date).click
end

def click_supervisor_end_date()
  $browser.find_element(:xpath, $supervisor_end_date).click
end

def click_supervisor_leave_type()
  $browser.find_element(:xpath, $supervisor_leave_type).click
end

def click_supervisor_duration()
  $browser.find_element(:xpath, $supervisor_duration).click
end

def click_supervisor_status()
  $browser.find_element(:xpath, $supervisor_status).click
end

def click_supervisor_expand()
  $browser.find_element(:xpath, $supervisor_expand).click
end

#search in supervisor
def input_supervisor_search(keyword)
  $browser.find_element(:name, $supervisor_search).send_keys(keyword)
end

def clear_supervisor_search()
  $browser.find_element(:name, $supervisor_search).clear
end

#approve / reject
def click_button_approve()
 $browser.find_element(:xpath, $button_approve).click
end

def click_button_reject()
  $browser.find_element(:xpath, $button_reject).click
end

def click_button_yes()
  $browser.find_element(:xpath, $button_yes).click
end

#logout
def click_profil()
  $browser.find_element(:xpath, $profil).click
end

def click_button_logout()
  $browser.find_element(:xpath, $button_logout).click
end