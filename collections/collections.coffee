root = global ? window

root.Details = new Meteor.Collection('users')

if !Details.find().count()
	toInsert = [
		{
			username: 'Joe'
			password: 'default-password'
			email: 'admin@example.com'
		}
		{
			username: 'mark'
			password: 'default-password'
			email: 'admin@example.com'
		}
		{
			username: 'mandible'
			password: 'default-password'
			email: 'admin@example.com'
		}
		{
			username: 'sogoa'
			password: 'default-password'
			email: 'admin@example.com'
		}
	]

	for details in toInsert
		root.Details.insert(details);
