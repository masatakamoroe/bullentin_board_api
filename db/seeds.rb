# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.create(title: 'Atitle', text:'Atext', user_id: 1)
Topic.create(title: 'Btitle', text:'Btext', user_id: 2)
Topic.create(title: 'Conytitle', text:'Ctext', user_id: 3)
Comment.create(text: 'Acomment', user_id: 1, topic_id: 1)
Comment.create(text: 'Bcomment', user_id: 2, topic_id: 2)
Comment.create(text: 'Ccomment', user_id: 3, topic_id: 3)
