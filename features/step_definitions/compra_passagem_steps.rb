Dado("que estou logado") do
    steps %{Dado que eu logo na pagina}
    steps %{Quando eu incluo meu "teste" e "teste"}
end

Dado("preencho os campos para compra de passagem") do
    @flight_finder_page = FlightFinderPage.new
    @flight_finder_page.clickContinueButton
end

Dado("escolho o voo") do
    @select_flight_page = SelectFlightPage.new
    @select_flight_page.clickContinueButton
end

Dado("preencho as informacoes do usuario {string}") do |name|
    @book_a_flight_page = BookAFlightPage.new
    @book_a_flight_page.setPassangerInformations(name, "Soares")
    @book_a_flight_page.setCreditCardInformation("11111111111")
    @book_a_flight_page.clickSecurePurchaseButton

end

Então("valido a compra da passagem") do
    expect(page).to have_content "Your itinerary has been booked!"
end
