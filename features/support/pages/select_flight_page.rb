class SelectFlightPage < SitePrism::Page
    set_url '/mercuryreservation2.php'
    element :btn_signoff, 'a[href*="mercurysignoff.php"]'
    element :btn_continue, 'input[name="reserveFlights"]'
    
    def clickContinueButton
        btn_continue.click
    end

    def clickSignoffButton
        btn_signoff.click
    end
end