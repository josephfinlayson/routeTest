Meteor.publish 'test', () ->
	sub = this
	sub.added({info:'test'})
	sub.ready()