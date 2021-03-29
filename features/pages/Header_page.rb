# created by citra

$menu_logout = '//*[@id="layout"]/div/div/header/div[1]/div[3]/button/span/div/div[1]'
$logout_button = '//*[@id="list-item-228"]'

def click_menu_logout()
    $browser.find_element(:xpath, $menu_logout).click
end

def click_logout_button()
    $browser.action.send_keys(:down).send_keys(:enter).perform
end
