User.create(username: "jmpann", first_name: "josh", last_name: "pann", email: "test@test.com", password: "123456")
User.create(username: "bdsmith", first_name: "bob", last_name: "smith", email: "test2@test.com", password: "123456")
User.create(username: "test", first_name: "test", last_name: "test", email: "test3@test.com", password: "123456")

Post.create(title: "Lorem ipsum dolor sit amet.", description: "s malesuada posuere. Fusce ultrices massa a libero dapibus, nec volutpat orci posuere.", user_id: 1 )
Post.create(title: "consectetur adipiscing elit", description: " rhoncus vitae id justo. Nunc cursus imperdiet es", user_id: 1)
Post.create(title: "Vestibulum rhoncus ullamcorper", description: "s. Nam luctus fermentum aliquet. Nulla porta, ipsum a auctor ", user_id: 1 )
Post.create(title: "Etiam non rutrum felis", description: "us tincidunt ullamcorper. Integer vitae dui pellentesque,", user_id: 2 )
Post.create(title: "Vestibulum et euismod urna", description: "quam vitae condimentum. Praesent elit mi, imperdiet venenatis egestas eu", user_id: 2 )
Post.create(title: "Etiam eros nisi", description: "endrerit vitae sapien at, consequat imperdiet enim.", user_id: 2 )
