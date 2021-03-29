$search_field = 'searchSummary'
$search_field_my_activity = 'searchActivity'
$search_spv = 'searchOnSpv'

def input_search_keyword(keyword)
    $browser.find_element(:name, $search_field).send_keys(keyword)
end

def input_search_myactivity_keyword(keyword)
    $browser.find_element(:name, $search_field_my_activity).send_keys(keyword)
end

def input_search_spv(keyword)
    $browser.find_element(:name, $search_spv).send_keys(keyword)
end