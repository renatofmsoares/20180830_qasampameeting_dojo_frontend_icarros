class BookAFlightPage < SitePrism::Page
    set_url '/mercurypurchase.php'
    element :btn_signoff, 'a[href*="mercurysignoff.php"]'
    element :input_first_name, 'input[name="passFirst0"]'
    element :input_last_name, 'input[name="passLast0"]'
    element :input_credit_card_number, 'input[name="creditnumber"]'

    element :btn_secure_purchase, 'input[name="buyFlights"]'

    def setPassangerInformations(firstName, lastName)
        input_first_name.set firstName
        input_last_name.set lastName
    end

    def setCreditCardInformation(number)
        input_credit_card_number.set number
    end
    
    def clickSecurePurchaseButton
        btn_secure_purchase.click
    end

    def clickSignoffButton
        btn_signoff.click
    end
end