require 'watir'

browser = Watir::Browser.new
browser.goto "http://localhost/Login/index.php"

# Nhập username là khoảng trắng
browser.text_field(name: 'username').set ' '
browser.text_field(name: 'password').set '123456'
browser.button(name: 'submit').click

# KQ mong muốn: Yêu cầu điền thông tin
if browser.div(:id => "result").text == "Please fill"
puts "Passed"
else
puts "Not Passed"
end