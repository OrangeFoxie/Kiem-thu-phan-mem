require 'watir'

browser = Watir::Browser.new
browser.goto "http://localhost/Login/index.php"

# Nhập username sai, password sai
browser.text_field(name: 'username').set 'hhhhhh'
browser.text_field(name: 'password').set 'hhhhhh'
browser.button(name: 'submit').click

# KQ mong muốn: Tài khoản không tồn tại
if browser.div(:id => "result").text == "Account is not exist"
puts "Passed"
else
puts "Not Passed"
end