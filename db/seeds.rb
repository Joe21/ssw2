User.delete_all
Entry.delete_all

User.create(name: 'John Doe', zipcode: 10050, email: "test@test.com", password: 'password')
Entry.create(date: DateTime.strptime("04/07/2014", "%m/%d/%Y"), quantity: 10, hrs_slept: 5, temp: 53, user_id: 1)
Entry.create(date: DateTime.strptime("04/08/2014", "%m/%d/%Y"), quantity: 12, hrs_slept: 4, temp: 55, user_id: 1)
Entry.create(date: DateTime.strptime("04/09/2014", "%m/%d/%Y"), quantity: 7, hrs_slept: 7, temp: 60, user_id: 1)