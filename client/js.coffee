Template.goodbye.rendered = () ->
    console.log(Session.get('key'))
    console.log("Session.get('key')")

Template.hello.rendered = () ->
    console.log(Session.get('key'))
    console.log("Session.get('key')")

Template.goodbye.events({
    'click button': (e) ->
        e.preventDefault();
        Session.set('key', 'just came from goodbye');
        return Router.go('hello')

});


Template.hello.events({
    'click button': (e) ->
        e.preventDefault();
        Session.set('key', 'just came from hello');
        return Router.go('goodbye')
});

Template.publish.helpers
    subscription: () ->
       a =  Meteor.subscribe('test')
       console.log(a)
       a