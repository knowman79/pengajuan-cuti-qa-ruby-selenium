$button_create_leave = '//*[@id="layout"]/div/main/div/div/div/div/div[2]/div/div/div/div[1]/button'
$start_date_picked = 'startDateText'
$end_date_picked = 'endDateText'
$button_submit_create_leave = '//*[@id="app"]/div[3]/div/div/div[2]/form/div[2]/div[1]/button[1]'

def click_create_leave()
    $browser.find_element(:xpath, $button_create_leave).click()
end

def pick_start_date()
    $browser.find_element(:name, $start_date_picked).send_keys("2021-03-24")
end

def pick_end_date()
    $browser.find_element(:name, $end_date_picked).send_keys("2021-03-26")
end

def submit_create_leave()
    $browser.find_element(:name, $end_date_picked).send_keys(:tab, :tab, :tab, :tab, :down)
end