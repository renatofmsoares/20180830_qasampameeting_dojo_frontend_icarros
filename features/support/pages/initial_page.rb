class InitialPage < SitePrism::Page
    set_url ''
    element :btn_signon, 'a[href*="mercurysignon.php"]'

    def clickSignonButton
        btn_signon.click
    end
    
end