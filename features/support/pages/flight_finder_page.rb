class FlightFinderPage < SitePrism::Page
    set_url '/mercuryreservation.php'
    element :btn_signoff, 'a[href*="mercurysignoff.php"]'
    element :btn_continue, 'input[name="findFlights"]'
    
    def clickContinueButton
        btn_continue.click
    end

    def clickSignoffButton
        btn_signoff.click
    end
end