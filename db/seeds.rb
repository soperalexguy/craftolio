User.create!([
  {email: "alex.mitsoo@gmail.com", encrypted_password: "$2a$12$CMuAbMja3o3J40fBfoYqLu9gq74in3ooxuF/17Rrk1mBI/SmLstza", password: 'password', password_confirmation: 'password', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, username: "soperalex"},
  {email: "eireneneokleous@gmail.com", encrypted_password: "$2a$12$clYUZS5aRJZx8A671lzlMecfvYh8A8EUwShOT2TKbRjRKCy3/vPJa", password: 'password', password_confirmation: 'password', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, username: "irairi"},
  {email: "sotras@gmail.com", encrypted_password: "$2a$12$87t6yQOXAzDsYL1U/i02AO57YvL5eWpv8Lzkupv.orRH/mnplRes6", password: 'password', password_confirmation: 'password', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, username: "sotras"},
  {email: "zmike@gmail.com", encrypted_password: "$2a$12$0vyPt4hoxLzv2VfZ3Kz0beCAzLLPpCtFB/EeGiSL7ZuXdDgAGkbmC", password: 'password', password_confirmation: 'password', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, username: "zmikes"},
  {email: "batzakas@gmail.com", encrypted_password: "$2a$12$XoVHESNsVcEfUH3XZ2WjaOTcRfCtYSyJwigEsihWSCH5/WY8XcxR6", password: 'password', password_confirmation: 'password', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, username: "batzboi"},
  {email: "giorgos@gmail.com", encrypted_password: "$2a$12$ziJnxuw3PyiSrNg9CDG08OyuCOrptG4N7arfVsopQ1IZWnSMg7DTu", password: 'password', password_confirmation: 'password', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, username: "giorgoscut"},
  {email: "yiannis320@gmail.com", encrypted_password: "$2a$12$E8zQBtTmICWK.8U0NknN7.1ojY87dYJlh23vy8XJhhzKmBfAn2Nv.", password: 'password', password_confirmation: 'password', reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, username: "yiannis320"}
])
Profile.create!([
  {fname: "Alexandros", lname: "Michaelides", username: "soperalex", bio: "Hello! I am the person that built this website as a university project. I am not an artist, but a software developer. Have fun using this site!", user_id: 1},
  {fname: "Iraida", lname: "Neokleous", username: "irairi", bio: "I love to paint and dabble in photography! Can't wait to hear what you all think!", user_id: 2},
  {fname: "Sotiris", lname: "Zannetos", username: "sotras", bio: "My name is Sotiris. I'm from Cyprus. I'm here just to view the wonderful art and comment on them.", user_id: 3},
  {fname: "Michalis", lname: "Tryfonos", username: "zmikes", bio: "I like to hate so don't judge me!", user_id: 4},
  {fname: "Nicholas", lname: "Batzakas", username: "batzboi", bio: "I'm white. #privilege", user_id: 5},
  {fname: "Giorgos", lname: "Varnava", username: "giorgoscut", bio: "I am circumcised.", user_id: 6},
  {fname: "Yiannis", lname: "Demetriou", username: "yiannis320", bio: "I am yiannis 320. I hate art but I like being a part of things so here I am!", user_id: 7}
])
Profile.find(1).picture.attach(io: File.open("public/images/profile-pics/alex.jpg"), filename: 'alex.jpg', content_type: 'image/jpg')
Profile.find(2).picture.attach(io: File.open("public/images/profile-pics/iraida.jpg"), filename: 'iraida.jpg', content_type: 'image/jpg')
Profile.find(3).picture.attach(io: File.open("public/images/profile-pics/sotras.jpg"), filename: 'sotras.jpg', content_type: 'image/jpg')
Profile.find(4).picture.attach(io: File.open("public/images/profile-pics/zmikes.png"), filename: 'zmikes.png', content_type: 'image/png')
Profile.find(5).picture.attach(io: File.open("public/images/profile-pics/nic.jpg"), filename: 'nic.jpg', content_type: 'image/jpg')
Profile.find(6).picture.attach(io: File.open("public/images/profile-pics/george.jpg"), filename: 'george.jpg', content_type: 'image/jpg')
Profile.find(7).picture.attach(io: File.open("public/images/profile-pics/blank.png"), filename: 'blank.png', content_type: 'image/png')

Post.create!([
  {title: "Weird Dog", description: "I found this dog at the beach in antartica. It's very weird and it doesn't have legs. Poor thing :/", profile_id: 2},
  {title: "Guatemalan Grandma", description: "This is my grandma from my mothers side of the family. I think she looks beautiful", profile_id: 2},
  {title: "The scenery", description: "The beautiful village of Klirou, from Orxous look out point. Ou gamoto erkete efodos...", profile_id: 3},
  {title: "Materpiece", description: "I'm a bit of a photoshop master as you can see. I'm really proud of this. Hope you can see why!", profile_id: 5},
  {title: "When Life", description: "When Life", profile_id: 4},
  {title: "When", description: "Life", profile_id: 4},
  {title: "My uncle", description: "very nice picture of my uncle", profile_id: 5},
  {title: "Poly Deer", description: "Dabbling in some blender nowadays. Hope you like", profile_id: 1},
  {title: "Tree Girl", description: "A girl in tree :)", profile_id: 1},
  {title: "Unkown", description: "አላህን አመስግኑ እና ሳቅ በሳቅ በድምፅ ብልት ሰገራ ጨለማ አስፈሪ ጽሑፍ ባልተለየ ነገር ሳቅ አሁን ሃሃሃሃሃ የግጥም ቤተሰብ የወንድ ዘይቤ", profile_id: 4}
])
Post.find(1).picture.attach(io: File.open("public/images/post-pics/iraida1.jpg"), filename: 'iraida1.jpg', content_type: 'image/jpg')
Post.find(2).picture.attach(io: File.open("public/images/post-pics/iraida2.jpg"), filename: 'iraida2.jpg', content_type: 'image/jpg')
Post.find(3).picture.attach(io: File.open("public/images/post-pics/nic1.jpg"), filename: 'nic1.jpg', content_type: 'image/jpg')
Post.find(4).picture.attach(io: File.open("public/images/post-pics/sotras1.jpg"), filename: 'sotras1.jpg', content_type: 'image/jpg')
Post.find(5).picture.attach(io: File.open("public/images/post-pics/zmikes1.png"), filename: 'zmikes1.png', content_type: 'image/png')
Post.find(6).picture.attach(io: File.open("public/images/post-pics/zmikes2.jpg"), filename: 'zmikes2.jpg', content_type: 'image/jpg')
Post.find(7).picture.attach(io: File.open("public/images/post-pics/nic1.jpg"), filename: 'nic2.jpg', content_type: 'image/jpg')
Post.find(8).picture.attach(io: File.open("public/images/post-pics/alex1.jpg"), filename: 'alex1.jpg', content_type: 'image/jpg')
Post.find(9).picture.attach(io: File.open("public/images/post-pics/alex2.jpg"), filename: 'alex2.jpg', content_type: 'image/jpg')
Post.find(10).picture.attach(io: File.open("public/images/post-pics/zmikes3.png"), filename: 'zmikes3.png', content_type: 'image/png')

Comment.create!([
  {details: "What a beautiful grandmother you have!", post_id: 2, profile_id: 3},
  {details: "When Life", post_id: 5, profile_id: 4},
  {details: "??", post_id: 6, profile_id: 4},
  {details: "ń̵̇ì̴̕c̴͌̓ẻ̶̎ ̴͒͘p̵̐͛h̸́͘o̶̊̆t̶̑̚o̶̾̏", post_id: 1, profile_id: 4},
  {details: "h̴̿͠e̵̐͋l̷͑͝l̷͊͌o̵͋͘", post_id: 4, profile_id: 4},
  {details: "When Life", post_id: 3, profile_id: 5},
  {details: "Very nice", post_id: 5, profile_id: 1},
  {details: "Chickens", post_id: 6, profile_id: 1},
  {details: "I think I saw your grandfather in the village last night, in the brothel.", post_id: 7, profile_id: 1},
  {details: "My grandma can beat up your grandma. No cap", post_id: 2, profile_id: 1},
  {details: "Orxou sux", post_id: 3, profile_id: 1},
  {details: "አላህን አመስግኑ እና ሳቅ በሳቅ በድምፅ ብልት ሰገራ ጨለማ አስፈሪ ጽሑፍ ባልተለየ ነገር ሳቅ አሁን ሃሃሃሃሃ የግጥም ቤተሰብ የወንድ ዘይቤ", post_id: 2, profile_id: 4}
])


