if Admin.count.zero?
  puts 'Seeding Admins'
  Admin.create!(email: "admin@example.com", first_name: 'John', last_name: 'Dow', password: '123123', password_confirmation: '123123')
end
