# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Profile.create(fname: "Alexandros", lname: "Michaelides", username: "soperalex", bio: "Hello! I am the person that built this website as a university project. I am not an artist, but a software developer. Have fun using this site!")
post1 = Post.create(title: "Rainbow Horse", image: "/images/post-pics/soperalex/post1.jpg", description: "This is a horse that transcends reality with beautiful colours and majestic posing.", details: "details about post", profile_id: p1.id)
post2 = Post.create(title: "Rainbow Woman", image: "/images/post-pics/soperalex/post2.jpg", description: "This woman has no race. The colour on her skin is a mix of all the beautiful races our world has been divided into, hoping tha thse can make a change.", details: "details about post", profile_id: p1.id)
post3 = Post.create(title: "No Face Joe", image: "/images/post-pics/soperalex/post3.jpg", description: "Sometimes, in order to make room for improvement, you need to clear your head of previous ideologies to make room for a better you.", details: "details about post", profile_id: p1.id)
post4 = Post.create(title: "A woman", image: "/images/post-pics/soperalex/post4.jpg", description: "Idk man, just a quirky woman ig.", details: "details about post", profile_id: p1.id)