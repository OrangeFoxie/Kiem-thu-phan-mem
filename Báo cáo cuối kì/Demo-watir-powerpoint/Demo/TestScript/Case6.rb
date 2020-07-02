require 'watir'

browser = Watir::Browser.new
browser.goto "http://localhost/Login/index.php"

# Nhập username đúng, password sai
browser.text_field(name: 'username').set 'hieunguyen'
browser.text_field(name: 'password').set 'hhhhhhh'
browser.button(name: 'submit').click

# KQ mong muốn: Mật khẩu không đúng
if browser.div(:id => "result").text == "Password is wrong"
puts "Passed"
else
puts "Not Passed"
end