
Given("inicio la aplicación") do
    visit '/'
end
  
Then("muestra {string}") do |cadena|
    expect(page.body).to match /#{text}/m
end

Given("inicio la aplicación con numero secreto {int}") do |secreto|
    visit '/'
end
  
When("arriesga {int}") do |valor|
    fill_in "numero", :with => valor
    click_button "Arriesgar"
end
  
Then("muestra mensaje {string}") do |mensaje|
    expect(page).to have_css "div#mensaje", text: mensaje
end