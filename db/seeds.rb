@user = User.create(email: "test@test.com", 
	                  password: "asdfasdf", 
	                  password_confirmation: "asdfasdf", 
	                  first_name: "Hank", 
	                  last_name: "Scorpio",
	                  phone: "7209844709")

puts "1 User Created"

AdminUser.create(email: "admin@test.com", 
	               password: "asdfasdf", 
	               password_confirmation: "asdfasdf", 
	               first_name: "Ernst", 
	               last_name: "Blofeld",
	               phone: "7209844709")

puts "1 Admin User Created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
	AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Audit logs have been created"

