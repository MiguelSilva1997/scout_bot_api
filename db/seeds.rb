user = User.create(first_name: "Miguel",
            last_name: "Silva",
            email: "msilva",
            password_digest: "password",
            phone_number: "123456",
            role: 0)

user.player_profile.create(club: "VSI",
                           height: 177,
                           weight: 175,
                           dominant_foot: "left",
                           age: 17,
                           country: "Honduras",
                           primary_position: "CAM",
                           secondary_position: "FW")

user_1 = User.create(first_name: "Santiago",
                   last_name: "Morales",
                   email: "smorales",
                   password_digest: "password",
                   phone_number: "123456",
                   role: 0)

user_1.scout_profile(country: "Honduras",
                     reputation: 12,
                     availability: true)

user_2 = User.create(first_name: "Santiago",
                  last_name: "Morales",
                  email: "smorales",
                  password_digest: "password",
                  phone_number: "123456",
                  role: 0)

user_2.teams(name: "Fc Barcelona",
             reputation: 100,
             country: "Spain",
             league: "La Liga",
             division: 1)
