# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Profile.create(fname: "Alexandros", lname: "Michaelides", username: "soperalex", bio: "Hello! I am the person that built this website as a university project. I am not an artist, but a software developer. Have fun using this site!")
p2 = Profile.create(fname: "Sotiris", picture: "/images/profile-pics/sotras/sotras1.jpg", lname: "Zannettos", username: "Sotrs", bio: "My name is Sotiris. I'm from Cyprus. I'm here just to view the wonderful art and comment on them.")
p3 = Profile.create(fname: "Iraida", lname: "Neokleous", username: "irairi", bio: "I love to paint and draw with markers! Can't wait to hear what you all think!")
p4 = Profile.create(fname: "Andreas", lname: "Pelopidas", username: "shrimp", bio: "I like to hate so don't judge me!")

post1 = Post.create(title: "Rainbow Horse", image: "/images/post-pics/soperalex/post1.jpg", description: "This is a horse that transcends reality with beautiful colours and majestic posing.", details: "details about post", profile_id: p1.id)
post2 = Post.create(title: "Rainbow Woman", image: "/images/post-pics/soperalex/post2.jpg", description: "This woman has no race. The colour on her skin is a mix of all the beautiful races our world has been divided into, hoping tha thse can make a change.", details: "details about post", profile_id: p3.id)
post3 = Post.create(title: "No Face Joe", image: "/images/post-pics/soperalex/post3.jpg", description: "Sometimes, in order to make room for improvement, you need to clear your head of previous ideologies to make room for a better you.", details: "details about post", profile_id: p4.id)
post4 = Post.create(title: "A woman", image: "/images/post-pics/soperalex/post4.jpg", description: "Idk man, just a quirky woman ig.", details: "details about post", profile_id: p1.id)

c1 = Comment.create(details: "Very majestic horse. Well done!", post_id: post1.id, profile_id: p3.id)
c2 = Comment.create(details: "Great work! Could use some fine tuning in the mouth region.", post_id: post1.id, profile_id: p2.id)
c3 = Comment.create(details: "Prefer normal horses tbh", post_id: post1.id, profile_id: p4.id)
c4 = Comment.create(details: "Expressive!! I like it!", post_id: post2.id, profile_id: p2.id)
c5 = Comment.create(details: "Mysterious!", post_id: post3.id, profile_id: p1.id)
c6 = Comment.create(details: "Why is his face like that? >.>", post_id: post3.id, profile_id: p2.id)
c7 = Comment.create(details: "Ig this is a woman huh?", post_id: post4.id, profile_id: p4.id)