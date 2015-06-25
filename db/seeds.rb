10.times do
  company = Company.create(name: Faker::Company.name)
  5.times do
      location = company.locations.create(city: Faker::Address.city)
    10.times do
      employee = location.employees.create(full_name: Faker::Name.name, title: Faker::Name.title, company_id: company.id)
      3.times do
        location.courses.create(name: Faker::Company.catch_phrase, employees: Employee.where(full_name: employee.full_name))
      end
    end
  end
end
