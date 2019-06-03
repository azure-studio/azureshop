'use strict';

module.exports = function(app) {
    var todoList = require('./controller');

    app.route('/')
        .get(todoList.index);

    app.route('/users')
        .get(todoList.users);

    app.route('/cat')
        .get(todoList.findUsers);

    app.route('/men')
        .get(todoList.createUsers);

    app.route('/users')
        .put(todoList.updateUsers);
    
    app.route('/users')
        .delete(todoList.deleteUsers);
};