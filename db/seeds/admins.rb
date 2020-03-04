if Admin.count.zero?
  puts 'Seeding Admins'
  Admin.create!(email: "mazitov.kamil.00@mail.ru", first_name: 'John', last_name: 'Dow', password: '123123', password_confirmation: '123123')
end
