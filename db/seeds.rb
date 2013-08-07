
puts "creating interns"
25.times do
  Intern.create(
    first_name: Faker::Name.first_name,
    middle_initial: 65.+(rand(25)).chr,
    last_name: Faker::Name.last_name,
    ethnicity: Faker::Identification.ethnicity,
    major: Faker::Education.major ,
   school: Faker::Education.school,
   home_city: Faker::Address.city,
   home_state: Faker::AddressUS.state,
   local_city: Faker::Address.city,
   local_state: Faker::AddressUS.state,
   dob: Faker::Time.date(year_range: 50),
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
    school: Faker::Education.school,
    home_city: Faker::Address.city,
    home_state: Faker::AddressUS.state,
    local_city: Faker::Address.city,
    local_state: Faker::AddressUS.state,
    dob: Faker::Time.date(year_range: 50),
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
    school: Faker::Education.school,
    home_city: Faker::Address.city,
    home_state: Faker::AddressUS.state,
    local_city: Faker::Address.city,
    local_state: Faker::AddressUS.state,
    dob: Faker::Time.date(year_range: 50) ,
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
    school: Faker::Education.school,
    home_city: Faker::Address.city,
    home_state: Faker::AddressUS.state,
    local_city: Faker::Address.city,
    local_state: Faker::AddressUS.state,
    dob: Faker::Time.date(year_range: 50),
    congress_district:rand(25).to_s+","+ Faker::AddressUS.state_abbr,
    classification: "Senior"
  )
end
puts "creating internships"
  num = 0
  Intern.all.each do |intern|
    if num < 33
      val = Internship.create(season: "Spring", year: (1973 + rand(40)), program: "Space Grant", intern_id: intern.id)
    end

    if num > 32 && num < 66
    val1 = Internship.create(season: "Fall", year: (1973 + rand(40)), program: "Space Grant", intern_id: intern.id)
    end
    if num > 65 && num < 100
    val2 = Internship.create(season: "Summer", year: (1973 + rand(40)), program: "Space Grant", intern_id: intern.id)
    end
    num = num + 1
  end






