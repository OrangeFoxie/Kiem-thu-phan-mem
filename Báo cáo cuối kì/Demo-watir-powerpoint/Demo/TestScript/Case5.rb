require 'watir'

browser = Watir::Browser.new
browser.goto "http://localhost/Login/index.php"

# Nhập username, password đúng
browser.text_field(name: 'username').set 'hieunguyen'
browser.text_field(name: 'password').set '123456789'
browser.button(name: 'submit').click

# KQ mong muốn: Đăng nhập thành công
if browser.div(:id => "result").text == "Login Success."
puts "Passed"
else
puts "Not Passed"
end