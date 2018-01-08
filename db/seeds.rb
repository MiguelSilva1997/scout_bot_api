user = User.create(first_name: "Miguel",
                   last_name: "Silva",
                   email: "msilva",
                   password_digest: "password",
                   phone_number: "123456",
                   role: 0)

PlayerProfile.create(club: "VSI",
                     height: 177,
                     weight: 175,
                     dominant_foot: "left",
                     age: 17,
                     rating: 55,
                     country: "Honduras",
                     user_id: user.id,
                     primary_position: "CAM",
                     secondary_position: "FW")

user = User.create(first_name: "Rodrigo",
                   last_name: "Castro",
                   email: "rcastro",
                   password_digest: "password",
                   phone_number: "123456",
                   role: 0)

PlayerProfile.create(club: "VSI",
                     height: 177,
                     weight: 175,
                     dominant_foot: "left",
                     age: 17,
                     rating: 58,
                     country: "Honduras",
                     user_id: user.id,
                     primary_position: "CAM",
                     secondary_position: "FW")

user_1 = User.create(first_name: "Santiago",
                   last_name: "Morales",
                   email: "smorales",
                   password_digest: "password",
                   phone_number: "123456",
                   role: 1)

ScoutProfile.create(country: "Honduras",
                    reputation: 12,
                    availability: true,
                    user_id: user_1.id)

user_2 = User.create(first_name: "Lenin",
                     last_name: "Silva",
                     email: "lsilva",
                     password_digest: "password",
                     phone_number: "123456",
                     role: 2)

user_2.teams.create(name: "Fc Barcelona",
             reputation: 100,
             country: "Spain",
             league: "La Liga",
             division: 1)
