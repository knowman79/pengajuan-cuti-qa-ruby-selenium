# created by citra

$menu_my_activity = '//*[@id="layout"]/div/div/nav/div[1]/div[2]/div/a[2]/div[2]/div'
$menu_supervisor = '//*[@id="layout"]/div/div/nav/div[1]/div[2]/div/a[3]'
$menu_hrd = '//*[@id="layout"]/div/div/nav/div[1]/div[2]/div/a[4]'

def click_sidebar_my_activity()
    $browser.find_element(:xpath, $menu_my_activity).click
end

def click_sidebar_supervisor()
    $browser.find_element(:xpath, $menu_supervisor).click
end

def click_sidebar_hrd()
    $browser.find_element(:xpath, $menu_hrd).click
end