require 'watir'

browser = Watir::Browser.new
browser.goto "http://localhost/ecomm/ecommerce/login.php"

# Nhập username, password là khoảng trắng
browser.text_field(name: 'email').set ' '
browser.text_field(name: 'password').set ' '
browser.button(name: 'submit').click

# KQ mong muốn: Yêu cầu điền thông tin
if browser.div(:id => "result").text == "Please fill"
puts "Passed"
else
puts "Not Passed"
end
Console.Read(); 