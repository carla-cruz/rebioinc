FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "testuser+#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :team_member do 
    title "boss"
    first_name "Paulette"
    last_name "Carlson"
    bio "She is awesome!"
  end

end