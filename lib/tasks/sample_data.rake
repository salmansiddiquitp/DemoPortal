namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(username: "Example",
                 password: "password",
                 password_confirmation: "password")
    99.times do |n|
      username  = "Example" + n.to_s
      password  = "password"
      User.create!(username: username,
                   password: password,
                   password_confirmation: password)
    end
  end
end