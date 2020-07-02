# Tạo vòng lặp chạy tự động
$i = 1
$caseNum = 9
while $i <= $caseNum do
	puts ("Test Case #$i running")
	system("ruby Case#$i.rb")
	$i+=1
	puts "\n"
end