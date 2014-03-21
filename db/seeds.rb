# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Order.create(
              customer_name: "Ada",
              email: "ada@lovelace.com",
              status: "pending", ccnumber: "1234123412341234",
              zipcode: "12345", ccv: "123",
              expdate: "07-2017",
              total: "2000"
            )

Order.create(
              customer_name: "Eric",
              email: "eric@hodel.com",
              status: "paid", ccnumber: "1234123412341234",
              zipcode: "12345", ccv: "123",
              expdate: "07-2017",
              total: "15000"
            )

Order.create(
              customer_name: "Jeffrey",
              email: "jeff@lembeck.com",
              status: "cancelled", ccnumber: "1234123412341234",
              zipcode: "12345", ccv: "123",
              expdate: "07-2017",
              total: "1800"
            )

Product.create(
                name: "Kitten",
                price: "1000",
                image: "http://placekitten.com/800/600",
                avatar: 'http://placekitten.com/50/50',
                description: "This one comes with extra fluff",
              )

Product.create(
              name: "Cat",
              price: "2550",
              image: "http://placekitten.com/750/600",
              avatar: 'http://placekitten.com/45/50',
              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae arcu quis elit elementum blandit id in lacus. Nullam vitae felis ut sapien pulvinar lobortis quis eu urna. Nam porta imperdiet orci, id tempor erat semper interdum. Praesent id egestas ipsum. Nullam vel tellus porta, tempus lectus tempus, ultrices eros. Nullam adipiscing nisi nec est pulvinar interdum. Nam tortor orci, vestibulum vitae nibh sed, pulvinar aliquet leo. Sed semper nec sapien non mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis fringilla eros augue, a sollicitudin neque luctus sit amet. Nullam mi tortor, iaculis ut consequat at, cursus quis nibh. Fusce lacinia, turpis et mattis lobortis, nisl nulla volutpat nibh, vel auctor lectus risus vitae lectus."
              )

Product.create(
                name: "Nature",
                price: "2550",
                image: "http://lorempixel.com/800/600/nature",
                avatar: 'http://lorempixel.com/50/50/nature',
                description: "Integer lacinia, erat quis pharetra sodales, dolor sapien auctor risus, ac hendrerit magna tellus id libero. Praesent in facilisis diam, vitae fringilla eros. Nulla tempus commodo sem, at tristique sapien accumsan vel. Donec eget imperdiet erat, vel aliquam lacus. Duis ut est diam. Nam quis accumsan dui. Sed libero magna, placerat nec cursus bibendum, volutpat ut diam. Maecenas fermentum felis augue, vitae tempus purus vehicula non."
              )

Product.create(
                name: "City",
                price: "2550",
                image: "http://lorempixel.com/800/600/city",
                avatar: "http://lorempixel.com/50/50/city",
                description: "Praesent porta, est eu laoreet tincidunt, augue nulla laoreet elit, et iaculis lectus ante et purus. Nullam vehicula magna dolor, ac egestas enim consectetur id. Nam dui arcu, rhoncus quis velit et, fringilla ornare ante. Nullam tempor auctor nisl non fringilla. Mauris ac dignissim orci. Aliquam congue velit id tincidunt bibendum. Nam non nisl posuere, iaculis ipsum ut, pellentesque ligula. Phasellus porttitor, urna pulvinar porta dictum, magna tellus scelerisque lorem, at auctor velit quam eget felis."
              )
Product.create(
                name: "Food",
                price: "2550",
                image: "http://lorempixel.com/800/600/food",
                avatar: "http://lorempixel.com/50/50/food",
                description: "Aliquam in nunc justo. Nulla quis rhoncus erat. Vestibulum feugiat aliquam diam, vitae laoreet odio imperdiet id. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse bibendum sapien eget gravida lacinia. Nam rutrum, enim nec ultricies dapibus, ante lectus ultrices mi, et hendrerit elit mauris nec lacus. Sed aliquam et ipsum non ultricies. Ut vitae turpis arcu. Aenean dignissim faucibus magna, sed euismod est commodo a. Nulla facilisi. Duis commodo quam enim, a porttitor tellus semper sed. Maecenas auctor pellentesque elit, id mollis diam varius eget."
              )
Product.create(
                name: "Animals",
                price: "2550",
                image: "http://lorempixel.com/800/600/animals",
                avatar: "http://lorempixel.com/50/50/animals",
                description: "Fluffy fur stretching scratched give me fish, catnip toss the mousie shed everywhere attack your ankles puking lick. Climb the curtains puking litter box catnip bat, scratched jump on the table litter box kittens puking bat jump. Hiss scratched hiss zzz jump tail flick, claw biting litter box judging you leap. Biting shed everywhere jump on the table sleep in the sink, jump on the table sunbathe meow biting jump on the table lay down in your way. Lick eat the grass hiss toss the mousie I don't like that food rip the couch, run tail flick lick run purr I don't like that food. Hairball eat kittens sleep on your keyboard, sunbathe sunbathe attack your ankles fluffy fur climb the curtains judging you."
                )
Item.create(
            product_name: "Animals",
            product_avatar: "http://lorempixel.com/50/50/animals",
            quantity: "1",
            order_id: 1,
            currentprice: "1000"
          )
Item.create(
            product_name: "Food",
            product_avatar: "http://lorempixel.com/50/50/food",
            quantity: "5",
            order_id: 2,
            currentprice: "2550"
          )
Item.create(
            product_name: "City",
            product_avatar: "http://lorempixel.com/50/50/city",
            quantity: "1",
            order_id: 1,
            currentprice: "2550"
            )
Item.create(
            product_name: "Nature",
            product_avatar: 'http://lorempixel.com/50/50/nature',
            quantity: "1",
            order_id: 2,
            currentprice: "2550"
            )
Item.create(
            product_name: "Cat",
            product_avatar: 'http://placekitten.com/45/50',
            quantity: "1",
            order_id: 1,
            currentprice: "2550"
            )
