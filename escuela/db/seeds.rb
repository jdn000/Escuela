User.create!(name:  "julio",
             email: "js.diazn@gmail.com",
             password:              "diaz1987",
             password_confirmation: "diaz1987",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)



#15.times do |n|
 # name  = Faker::Name.name
  #email = "example-#{n+1}@railstutorial.org"
  #password = "password"
  #User.create!(name:  name,
   #            email: email,
    #           password:              password,
     #          password_confirmation: password)
#end