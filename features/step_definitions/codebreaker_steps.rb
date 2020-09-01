
Given("inicio la aplicación") do
    visit '/'
end
  
Then("muestra {string}") do |cadena|
    expect(page.body).to match /#{text}/m
end
