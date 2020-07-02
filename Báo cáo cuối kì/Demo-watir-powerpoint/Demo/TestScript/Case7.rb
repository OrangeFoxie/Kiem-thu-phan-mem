require 'watir'

browser = Watir::Browser.new
browser.goto "http://localhost/Login/index.php"

# Nhập username sai, password đúng
browser.text_field(name: 'username').set 'hhhhhh'
browser.text_field(name: 'password').set '123456789'
browser.button(name: 'submit').click

# KQ mong muốn: Tài khoản không tồn tại
if browser.div(:id => "result").text == "Account is not exist"
puts "Passed"
else
puts "Not Passed"
end