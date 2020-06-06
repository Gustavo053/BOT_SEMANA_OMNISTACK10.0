require 'selenium-webdriver'

#Indicating the driver path to selenium
Selenium::WebDriver::Firefox.driver_path = '/home/gustavo/Downloads/geckodriver'

#assigning the firefox driver
@driver = Selenium::WebDriver.for :firefox

#accessing the address
@driver.get('http://localhost:3000')

i = 0
loop do
    @driver.find_element(:id, 'nome').send_keys("FirstName#{i}")
    sleep 1
    @driver.find_element(:id, 'sobrenome').send_keys("LastName#{i}")
    sleep 1
    @driver.find_element(:id, 'email').send_keys("email#{i}@gmail.com")
    sleep 1
    @driver.find_element(:id, 'techs').send_keys('NodeJS, ReactJS, ReactNative')
    sleep 1

    i = i + 1

    @driver.find_element(:class, 'botao').click
    sleep 1

    # puts 'send successfull'
end

