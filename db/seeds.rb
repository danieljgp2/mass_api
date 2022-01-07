# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: 'danieljesusguzzoperez@gmail.com', name: 'Daniel Guzzo', password: 'password',
                   color: format('%06x', (rand * 0xffffff)))
user_two = User.create(email: 'barbara@recorrido.cl', name: 'Barbara', password: 'password',
                       color: format('%06x', (rand * 0xffffff)))

service = Service.create(name: 'Recorrido')
service_two = Service.create(name: 'MaaS')

setting = Setting.create(service: service)
setting_two = Setting.create(service: service_two)

Day.create(name: 0, start: 0, end: 23, setting: setting)
Day.create(name: 1, start: 0, end: 23, setting: setting)
Day.create(name: 2, start: 12, end: 22, setting: setting)
Day.create(name: 3, start: 12, end: 22, setting: setting)
Day.create(name: 4, start: 12, end: 22, setting: setting)
Day.create(name: 5, start: 13, end: 20, setting: setting)
Day.create(name: 6, start: 13, end: 20, setting: setting)

Day.create(name: 0, start: 10, end: 20, setting: setting_two)
Day.create(name: 1, start: 10, end: 20, setting: setting_two)
Day.create(name: 2, start: 10, end: 20, setting: setting_two)
Day.create(name: 3, start: 10, end: 21, setting: setting_two)
Day.create(name: 4, start: 10, end: 21, setting: setting_two)
Day.create(name: 5, start: 13, end: 22, setting: setting_two)
Day.create(name: 6, start: 13, end: 22, setting: setting_two)

WorkShift.create(user: user, service: service, start: '2022-01-07 12:00', end: '2022-01-07 13:00')
WorkShift.create(user: user_two, service: service, start: '2022-01-07 13:00', end: '2022-01-07 14:00')
