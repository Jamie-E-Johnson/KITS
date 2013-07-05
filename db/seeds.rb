25.times do
  Intern.create(
    first_name: Faker::Name.first_name,
    middle_initial: 65.+(rand(25)).chr,
    last_name: Faker::Name.last_name,
    ethnicity: Faker::Identification.ethnicity,
    major: Faker::Education.major ,
    minor: Faker::Education.major ,
   school: Faker::Education.school,
   local_city: Faker::Address.city,
   local_state: Faker::AddressUS.state,
   home_city: Faker::Address.city,
   home_state: Faker::AddressUS.state,
   age: 17+rand(40),
   congress_district:rand(25).to_s+","+ Faker::AddressUS.state_abbr,
   classification: "Freshman"
  )
end
25.times do
  Intern.create(
    first_name: Faker::Name.first_name,
    middle_initial: 65.+(rand(25)).chr,
    last_name: Faker::Name.last_name,
    ethnicity: Faker::Identification.ethnicity,
    major: Faker::Education.major ,
    minor: Faker::Education.major ,
    school: Faker::Education.school,
    local_city: Faker::Address.city,
    local_state: Faker::AddressUS.state,
    home_city: Faker::Address.city,
    home_state: Faker::AddressUS.state,
    age: 17+rand(40),
    congress_district:rand(25).to_s+","+ Faker::AddressUS.state_abbr,
    classification: "Sophomore"
  )
end
25.times do
  Intern.create(
    first_name: Faker::Name.first_name,
    middle_initial: 65.+(rand(25)).chr,
    last_name: Faker::Name.last_name,
    ethnicity: Faker::Identification.ethnicity,
    major: Faker::Education.major ,
    minor: Faker::Education.major ,
    school: Faker::Education.school,
    local_city: Faker::Address.city,
    local_state: Faker::AddressUS.state,
    home_city: Faker::Address.city,
    home_state: Faker::AddressUS.state,
    age: 17+rand(40),
    congress_district:rand(25).to_s+","+ Faker::AddressUS.state_abbr,
    classification: "Junior"
  )
end
25.times do
  Intern.create(
    first_name: Faker::Name.first_name,
    middle_initial: 65.+(rand(25)).chr,
    last_name: Faker::Name.last_name,
    ethnicity: Faker::Identification.ethnicity,
    major: Faker::Education.major ,
    minor: Faker::Education.major ,
    school: Faker::Education.school,
    local_city: Faker::Address.city,
    local_state: Faker::AddressUS.state,
    home_city: Faker::Address.city,
    home_state: Faker::AddressUS.state,
    age: 17+rand(40),
    congress_district:rand(25).to_s+","+ Faker::AddressUS.state_abbr,
    classification: "Senior"
  )
end






