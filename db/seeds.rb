10.times do
  company = Company.create(name: Faker::Company.name)
  5.times do
      location = company.locations.create(city: Faker::Address.city)
    10.times do
      location.employees.create(full_name: Faker::Name.name, title: Faker::Name.title, company_id: company.id)
    end
    3.times do
      location.courses.create(name: Faker::Company.catch_phrase)
    end
  end
end
