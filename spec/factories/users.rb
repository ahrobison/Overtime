FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'Hank'
    last_name 'Scorpio'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Ernst'
    last_name 'Blofeld'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :non_authorized_user, class: "AdminUser" do
    first_name 'Doctor'
    last_name 'Evil'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end