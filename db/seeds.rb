# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:email => "ikrogers@valdosta.edu", :fname => "Ilya", :lname=>"Rogers", :password => "123123123", :password_confirmation => "123123123", :u_type => 2, :gender => "Male")
User.create(:email => "ik@valdosta.edu", :fname => "Ilya", :lname => "Rogers", :password => "123123123", :password_confirmation => "123123123", :u_type => 1,:gender => "Female")
User.create(:email => "ik2@valdosta.edu", :fname => "Ilya", :lname => "Rogers", :password => "123123123", :password_confirmation => "123123123", :u_type => 3)
User.create(:email => "tccauley@valdosta.edu", :fname => "Clinton", :lname => "Cauley", :password => "123123123", :password_confirmation => "123123123", :u_type => 2)
User.create(:email => "clint.cauley@gmail.com", :fname => "Clinton", :lname => "Cauley", :password => "123123123", :password_confirmation => "123123123", :u_type => 1)
User.create(:email => "tccauley@usg.edu", :fname => "Clinton", :lname => "Cauley", :password => "123123123", :password_confirmation => "123123123", :u_type => 3)

#Exercises are labeled 1-6 in intensity. I split them together into their different groups based on calories lost more than anything ele, just to be simple

#Exercises with intensity 1 - >= 100 calories lost and relatively easy
Exercise.create(
    :name => "Cat Stretch", 
    :descr => "1.) Start off kneeling down on the floor with your feet extended behind you and your hands flat on the floor at shoulder level.
        2.) Slowly pull your belly in and round out your back, letting your head drop to the floor until you feel a stretch in your back muscles.
        3.) Hold this position for 15 to 30 seconds then return back to the starting position.
        4.) Repeat for as long and many reps as desired.", 
    :calories => 100, 
    :intensity => 1,
    :video => "ZiNXOE5EsZw")

Exercise.create(
    :name => "Ankle Circle", 
    :descr => "The ankle circles exercise is the most simple workout for the calves to loosen the joints and strengthen and improve flexibility within the muscle.
        
        1.) Start off standing on one foot near a chair or wall for support.
        
        2.) Lift your foot off the ground and draw circles clockwise in the air with your toes.
        
        3.) Reverse the direction (counter-clockwise) and switch feet.", 
    :calories => 60, 
    :intensity => 1,
    :video => "jsy41du9I5g")

Exercise.create(
    :name => "Walking (2mph/30minutes)", 
    :descr => "Running is one of the most common and effect forms of exercise for muscle toning, weight loss and keeping your lungs and body in shape.
        Running improves on conditioning the body, endurance, stamina, speed, strength in the legs and core, as well as improving one's posture.", 
    :calories => 90, 
    :intensity => 1,
    :video => "ndVjwkaLGDk")
    
Exercise.create(
    :name => "Tai Chi(60 minutes)",
    :descr => "Tai chi is a very slow paced, relaxing and gentle exercise routine based on breathing and stretching.",
    :calories => 272,
    :intensity => 1)
    
Exercise.create(
    :name => "Chair Dancing",
    :descr => "Chair dancing is a simple, seated exercise program that allows you to burn calories in a fun and relaxing way.",
    :calories => 150,
    :intensity => 1)

#Exercises with intensity 2 - More difficult than 1 but not by much. Also low calories burned
Exercise.create(
    :name => "Running (3mph/30minutes)", 
    :descr => "Running is one of the most common and effect forms of exercise for muscle toning, weight loss and keeping your lungs and body in shape.
        Running improves on conditioning the body, endurance, stamina, speed, strength in the legs and core, as well as improving one's posture.", 
    :calories => 120, 
    :intensity => 2,
    :video => "wRkeBVMQSgg")

Exercise.create(
    :name => "Behind Head Chest Stretch", 
    :descr => "1.) In this stretch you will need a partner behind you to assist.
        
        2.) Start off by sitting upright on the floor with your partner behind you, placing your hands behind your head and legs extended out in front of you with a slight bend in the kees.
        
        3.) Have your partner hold your elbows, then try and pull your elbows forward from behind your head for about 15 to 30 seconds then release.
        
        4.) Then afterwards have your partner pull back on your elbows again but easily this time to help stretch out the chest muscles.", 
    :calories => 180, 
    :intensity => 2,
    :video => "xEai_DxD-Nw")

Exercise.create(
    :name => "Pilates", 
    :descr => "Pilates are an exercise that focus upon developing strength through the core of the body as well as increasing flexibility and coordination.", 
    :calories => 180, 
    :intensity => 2,
    :video => "lCg_gh_fppI")

Exercise.create(
    :name => "Abdominal Pendulum", 
    :descr => "1.) Start off by laying with your back flat on the floor, your legs together extended out in front of you and your hands placed out to your sides so that you are in a 'T' position.
        
        2.) Slowly lift your legs up and over your body so that you are creating a right angle to the floor, then twisting only at your hips, lower your feet slowly to the floor to your right without losing any control.
        
        3.) As soon as you feel a stretch in your obliques, return to the starting position and repeat on the opposite side.
        
        4.) Repeat for as many reps and sets as desired.", 
    :calories => 180, 
    :intensity => 2,
    :video => "bwV3-gTy4Aw")
    
Exercise.create(
    :name => "Jumping Rope", 
    :descr => "Jump rope is a great cardio exercise that helps burn a significant amount of calories through repeated jumping motion and keeping the body moving.", 
    :calories => 200, 
    :intensity => 2,
    :video => "60Ug5rnTYfk")

#Exercises with intensity 3    
Exercise.create(
    :name => "Indoor Cycling", 
    :descr => "Indoor cycling is a form of exercise that focuses on endurance, stamina, strength, intensity, intervals and recovery.", 
    :calories => 200, 
    :intensity => 3,
    :video => "qrwfQ9Qwai4")
    
Exercise.create(
    :name => "Aerobic", 
    :descr => "Aerobic Exercise focuses upon cardiovascular fitness, muscle strength and endurance by performing aerobic workouts.", 
    :calories => 230, 
    :intensity => 3,
    :video => "QQSYo_pC-QA")
    
Exercise.create(
    :name => "Swimming (20 minutes)",
    :descr => "Swimming laps is a fun and excellent way to work out your entire body, while burning fat in the process!",
    :calories => 106,
    :intensity => 3)
    
Exercise.create(
    :name => "Running (4mph, 30 minutes)",
    :descr => "Running is one of the most common and effect forms of exercise for muscle toning, weight loss and keeping your lungs and body in shape.
        Running improves on conditioning the body, endurance, stamina, speed, strength in the legs and core, as well as improving one's posture.", 
    :calories => 265,
    :intensity => 3,
    :video => "wRkeBVMQSgg")
    
Exercise.create(
    :name => "Volleyball (30 minutes)",
    :descr => "A fun and engaging sport that gets you running around and moving your body with friends, burning calories along the way",
    :calories => 206,
    :intensity => 3)

#Exercises with intensity 4
Exercise.create(
    :name => "Aerobics (moderate/30minutes)", 
    :descr => "Aerobic Exercise focuses upon cardiovascular fitness, muscle strength and endurance by performing aerobic workouts.", 
    :calories => 232, 
    :intensity => 4,
    :video => "QQSYo_pC-QA")
    
Exercise.create(
    :name => "Bench Dip", 
    :descr => "1.) Start off by placing two benches parallel to each other 3-4 feet apart.
        
        2.) Sit on one bench and place your feet on the edge of the other bench so that your legs are suspended between the two.
        
        3.) Cross your feet for support, holding onto the bench with your hands for support and slowly lower body towards the floor by bending your elbows.
        
        4.) Pause, hold for a count and then return to starting position.
        
        5.) Repeat for as many reps and sets as desired.", 
    :calories => 290, 
    :intensity => 4,
    :video => "c3ZGl4pAwZ4")
    
Exercise.create(
    :name => "Mountain Biking", 
    :descr => "Mountain biking is a sport that consists of riding outdoors, mostly off-road courses and over rough terrain.
        It requires stamina, core strength, endurance, balance, coordination and handling skills.", 
    :calories => 240, 
    :intensity => 4,
    :video => "F1QrJ3_5MyU")
    
Exercise.create(
    :name => "Uphill Running (3mph/30 minutes)",
    :descr => "Running uphill makes the traditional running exercise more difficult and burns more calories for less time.",
    :calories => 400,
    :intensity => 4,
    :video => "wRkeBVMQSgg")
    
Exercise.create(
    :name => "Sprinting (2.5 minutes)",
    :descr => "Sprinting is hight intensity and gets your heart rate going fast, burning calories in a shorter interval of time.",
    :calories => 200,
    :intensity => 4,
    :video => "wRkeBVMQSgg")

#Exercises with intensity 5
Exercise.create(
    :name => "Dragon Flag", 
    :descr => "1.) Start off laying on a decline or flat bench and grabbing the end of it behind your head with both hands.
        
        2.) Squeeze and create tension throughout your body so that you are able to feel your muscles and abdominals tighten
        
        3.) Then from the starting position swing your feet upward so that your body is almost vertical or completely vertical.
        
        4.) Keep your abdominals tight and your entire body as straight as possible as you are pointed up in the air.
        
        5.) Hold this position for as long as possible, squeezing your muscles and abs as much as you can.
        
        6.) Once you complete your rep, slowly lower your feet towards the floor in a controlled manner.
        
        7.) Repeat for as many reps and sets as desired.", 
    :calories => 320, 
    :intensity => 5,
    :video => "CavZeuCS56g")
    
Exercise.create(
    :name => "Jogging (6mph/30 minutes)",
    :descr => "Same as all the other running stuff",
    :calories => 330,
    :intensity => 5,
    :video => "wRkeBVMQSgg")

#Exercises with intensity 6
Exercise.create(
    :name => "Hand Stand Push Up", 
    :descr => "2.) Slowly kick your feet up against the wall, still keeping your arms straight, and walk your way up the wall with your feet so that your legs and arms are fully extended.
        
        3.) Make sure that your body is straight and balanced before you move onto the next step.
        
        4.) Slowly, through your shoulders, lower yourself towards the ground so that your head almost touches the floor and you feel a stretch in your shoulders and upper body.
        
        5.) Push yourself back up until your elbows are near locked.
        
        6.) Repeat for as many reps and sets as desired.", 
    :calories => 200, 
    :intensity => 6,
    :video => "RAO7OG077Ac")

Exercise.create(
    :name => "Aerobics (intense/30 minutes)",
    :descr => "Same as the other aerobics put tougher blah blah",
    :calories => 500,
    :intensity => 6,
    :video => "QQSYo_pC-QA")

Diet.create(:name => "Apple (Golden Delicious)", 
    :descr => "Serving weights 242 gramms and contain 126 colories with significant dietary fiber and modest vitamin C content", 
    :calories => 62, 
    :intensity => 1)

Diet.create(:name => "Orange", 
    :descr => "It's fruit, which is rich in antioxidants and vitamins such as vitamin C, vitamin B6, folic acid and dietary fiber", 
    :calories => 45, 
    :intensity => 1)

Diet.create(:name => "Pear", 
    :descr => "It's sweet juicy yellow or green fruit, which contains much calcium and riboflavin", 
    :calories => 81, 
    :intensity => 1)

Diet.create(:name => "Grapefruit", 
    :descr => "It's a large citrus fruit with a bitter yellow rind and inner skin and a highly flavored somewhat acid juicy pulp", 
    :calories => 32, 
    :intensity => 1)

Diet.create(:name => "Watermelon", 
    :descr => "It's a large oblong or roundish fruit with a hard green or white rind often striped a sweet watery pink, yellowish, or red pulp, and usually many seeds.", 
    :calories => 46, 
    :intensity => 1)

Diet.create(:name => "Big Mac", 
    :descr => "Consists of two 1.6 oz (45.4 g) 100 per cent beef patties, American cheese, special sauce, iceberg lettuce, pickles, and onions, served 
           in a three-part sesame seed bun.", 
    :calories => 550, 
    :intensity => 4)

Diet.create(:name => "Whopper", 
    :descr => "Whopper is a hamburger, consisting of a flame grilled quarter-pound (113.4 g) beef patty, sesame seed bun, mayonnaise, lettuce, tomato, 
           pickles, ketchup, and sliced onion", 
    :calories => 650, 
    :intensity => 4)

Diet.create(:name => "Frosted Flakes", 
    :descr => "It's a breakfast cereal which consists of sugar-coated corn flakes.", 
    :calories => 143, 
    :intensity => 2)

Diet.create(:name => "Raisan Bran", 
    :descr => "It's a breakfast cereal manufactured by several companies under a variety of brand names, including Kellogg's Raisin Bran, General Mills' 
            Total Raisin Bran and Post Foods' Post Raisin Bran", 
    :calories => 190, 
    :intensity => 2)

Diet.create(:name => "Fried Chicken Breast", 
    :descr => "It's a boneless, tenderized piece of meat that has been floured or battered and cooked in any of the methods", 
    :calories => 294, 
    :intensity => 3)

Diet.create(:name => "Broiled Chicken Breast", 
    :descr => "It's a nutritious and versatile food. It can be prepared in a number of ways to accomplish different flavors, 
           textures and presentations", 
    :calories => 194, 
    :intensity => 3)

Diet.create(:name => "Sour Cream & Onion Potato Chips", 
    :descr => "It's a snack food, which contains very few vitamins and minerals in any variety. At ten percent of the daily requirement per serving, 
           vitamin C is the highest. Salt content is particularly high, with a serving containing as much as 380 mg of sodium.", 
    :calories => 0, 
    :intensity => 1)

Diet.create(:name => "Butter", 
    :descr => "It's a solid yellow substance made from milk or cream that is spread on food", 
    :calories => 36, 
    :intensity => 1)
    
Diet.create(:name => "Schrimp", 
    :descr => "It's high in calcium, iodine and protein but low in food energy", 
    :calories => 110, 
    :intensity => 2)
    
Diet.create(:name => "Potatos", 
    :descr => "It's a starchy brown or red-skinned growth of a plant in the nightshade family, eaten as a cooked vegetable.", 
    :calories => 97, 
    :intensity => 1)
    
Diet.create(:name => "Boiled Egg", 
    :descr => "Egg cooked briefly in the shell in gently boiling water", 
    :calories => 80, 
    :intensity => 1)
    
Diet.create(:name => "Vegatables Soup", 
    :descr => "Soup made with a variety of vegetables", 
    :calories => 255, 
    :intensity => 3)
    
Diet.create(:name => "COTTAGE CHEESE", 
    :descr => "is a fresh cheese curd product with a mild flavor. A 4-oz (113-g) serving of 4% fat product has about 120 calories, 5 g fat, 3 g carbohydrates, and 14 g protein.
               It also contains about 500 mg sodium, 70 mg calcium and 20 mg cholesterol", 
    :calories => 90, 
    :intensity => 1)
    
Diet.create(:name => "Crispbread", 
    :descr => "is a flat and dry type of bread or cracker, containing mostly rye flour. Crispbreads are light and keep fresh for a very long time. Crispbread is a staple food and 
              was for a long time considered a poor man's diet.", 
    :calories => 92, 
    :intensity => 1)
    
Diet.create(:name => "Bread", 
    :descr => "is a staple food prepared from dough of flour and water, usually by baking", 
    :calories => 24, 
    :intensity => 1)
