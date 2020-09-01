
Given("inicio la aplicación") do
    visit '/'
end
  
Then("muestra {string}") do |cadena|
    expect(page.body).to match /#{text}/m
end

Given("Asigno numero secreto {int}") do |secreto|
#    puts "DEBUG :::: codebreaker_steps > secreto= #{secreto}"
    visit "/inicio/#{secreto}"
end
  
When("arriesga {int}") do |valor|
    visit "/"
    fill_in "numero", :with => valor
    click_button "Arriesgar"
end
  
Then("muestra mensaje {string}") do |mensaje|
    expect(page).to have_css "div#mensaje", text: mensaje
end