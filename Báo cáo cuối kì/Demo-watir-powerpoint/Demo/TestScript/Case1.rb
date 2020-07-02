require 'watir'

browser = Watir::Browser.new
browser.goto "http://localhost/Login/index.php"

# Nhấn nút đăng nhập luôn, không quan tâm usename, password
browser.button(name: 'submit').click

# KQ mong muốn: Yêu cầu điền thông tin
if browser.div(:id => "result").text == "Please fill"
puts "Passed"
else
puts "Not Passed"
end