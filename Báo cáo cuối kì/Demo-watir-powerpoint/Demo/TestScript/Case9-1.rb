require 'watir'

browser = Watir::Browser.new
browser.goto "http://localhost/Login/index.php"

# SQL Injection
browser.text_field(name: 'username').set "hieunguyen"
browser.text_field(name: 'password').set "' OR 1=1--"
browser.button(name: 'submit').click

# KQ mong muốn: Đăng nhập thất bại
if browser.div(:id => "result").text == "Login Fail."
puts "Passed"
else
puts "Not Passed"
end