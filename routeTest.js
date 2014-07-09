if (Meteor.isClient) {
    Template.goodbye.rendered = function() {
        console.log(Session.get('key'))
            console.log("Session.get('key')")

    };

    Template.hello.rendered = function() {
        console.log(Session.get('key'))
            console.log("Session.get('key')")

    };
    
    Template.goodbye.events({
        'click button': function() {

            Session.set('key', 'just came from goodbye');
            return Router.go('hello')
        }
    });

    Template.hello.events({
        'click button': function() {
            Session.set('key', 'just came from hello');
            return Router.go('goodbye')
        }
    });
}

if (Meteor.isServer) {
    Meteor.startup(function() {
        // code to run on server at startup
    });
}
