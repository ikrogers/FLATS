# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:email => "ikrogers@valdosta.edu", :fname => "Ilya", :lname=>"Rogers", :password => "123123123", :password_confirmation => "123123123", :u_type => 2)
User.create(:email => "ik@valdosta.edu", :fname => "Ilya", :lname => "Rogers", :password => "123123123", :password_confirmation => "123123123", :u_type => 1)
User.create(:email => "ik2@valdosta.edu", :fname => "Ilya", :lname => "Rogers", :password => "123123123", :password_confirmation => "123123123", :u_type => 3)
User.create(:email => "tccauley@valdosta.edu", :fname => "Clinton", :lname => "Cauley", :password => "789789789", :password_confirmation => "789789789", :u_type => 2)

Exercise.create(
    :name => "Behind Head Chest Stretch", 
    :descr => "1.) In this stretch you will need a partner behind you to assist.
        
        2.) Start off by sitting upright on the floor with your partner behind you, placing your hands behind your head and legs extended out in front of you with a slight bend in the kees.
        
        3.) Have your partner hold your elbows, then try and pull your elbows forward from behind your head for about 15 to 30 seconds then release.
        
        4.) Then afterwards have your partner pull back on your elbows again but easily this time to help stretch out the chest muscles.", 
    :calories => 180, 
    :intensity => 1)

Exercise.create(
    :name => "Ankle Circle", 
    :descr => "The ankle circles exercise is the most simple workout for the calves to loosen the joints and strengthen and improve flexibility within the muscle.
        
        1.) Start off standing on one foot near a chair or wall for support.
        
        2.) Lift your foot off the ground and draw circles clockwise in the air with your toes.
        
        3.) Reverse the direction (counter-clockwise) and switch feet.", 
    :calories => 60, 
    :intensity => 1)

Exercise.create(
    :name => "Walking (2mph/30minutes)", 
    :descr => "Running is one of the most common and effect forms of exercise for muscle toning, weight loss and keeping your lungs and body in shape.
        Running improves on conditioning the body, endurance, stamina, speed, strength in the legs and core, as well as improving one's posture.", 
    :calories => 90, 
    :intensity => 1)

Exercise.create(
    :name => "Running (3mph/30minutes)", 
    :descr => "Running is one of the most common and effect forms of exercise for muscle toning, weight loss and keeping your lungs and body in shape.
        Running improves on conditioning the body, endurance, stamina, speed, strength in the legs and core, as well as improving one's posture.", 
    :calories => 120, 
    :intensity => 1)

Exercise.create(
    :name => "Aerobics (moderate/30minutes)", 
    :descr => "Aerobic Exercise focuses upon cardiovascular fitness, muscle strength and endurance by performing aerobic workouts.", 
    :calories => 232, 
    :intensity => 2)
    
Exercise.create(
    :name => "Cat Stretch", 
    :descr => "1.) Start off kneeling down on the floor with your feet extended behind you and your hands flat on the floor at shoulder level.
        2.) Slowly pull your belly in and round out your back, letting your head drop to the floor until you feel a stretch in your back muscles.
        3.) Hold this position for 15 to 30 seconds then return back to the starting position.
        4.) Repeat for as long and many reps as desired.", 
    :calories => 100, 
    :intensity => 1)
    
Exercise.create(
    :name => "Bench Dip", 
    :descr => "1.) Start off by placing two benches parallel to each other 3-4 feet apart.
        
        2.) Sit on one bench and place your feet on the edge of the other bench so that your legs are suspended between the two.
        
        3.) Cross your feet for support, holding onto the bench with your hands for support and slowly lower body towards the floor by bending your elbows.
        
        4.) Pause, hold for a count and then return to starting position.
        
        5.) Repeat for as many reps and sets as desired.", 
    :calories => 290, 
    :intensity => 2)
    
Exercise.create(
    :name => "Abdominal Pendulum", 
    :descr => "1.) Start off by laying with your back flat on the floor, your legs together extended out in front of you and your hands placed out to your sides so that you are in a 'T' position.
        
        2.) Slowly lift your legs up and over your body so that you are creating a right angle to the floor, then twisting only at your hips, lower your feet slowly to the floor to your right without losing any control.
        
        3.) As soon as you feel a stretch in your obliques, return to the starting position and repeat on the opposite side.
        
        4.) Repeat for as many reps and sets as desired.", 
    :calories => 180, 
    :intensity => 1)
    
Exercise.create(
    :name => "Aerobic", 
    :descr => "Aerobic Exercise focuses upon cardiovascular fitness, muscle strength and endurance by performing aerobic workouts.", 
    :calories => 230, 
    :intensity => 1)
    
Exercise.create(
    :name => "Pilates", 
    :descr => "Pilates are an exercise that focus upon developing strength through the core of the body as well as increasing flexibility and coordination.", 
    :calories => 180, 
    :intensity => 1)
    
Exercise.create(
    :name => "Mountain Biking", 
    :descr => "Mountain biking is a sport that consists of riding outdoors, mostly off-road courses and over rough terrain.
        It requires stamina, core strength, endurance, balance, coordination and handling skills.", 
    :calories => 240, 
    :intensity => 1)
    
Exercise.create(
    :name => "Jumping Rope", 
    :descr => "Jump rope is a great cardio exercise that helps burn a significant amount of calories through repeated jumping motion and keeping the body moving.", 
    :calories => 200, 
    :intensity => 2)
    
Exercise.create(
    :name => "Indoor Cycling", 
    :descr => "Indoor cycling is a form of exercise that focuses on endurance, stamina, strength, intensity, intervals and recovery.", 
    :calories => 200, 
    :intensity => 1)
    
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
    :intensity => 3)

Exercise.create(
    :name => "Hand Stand Push Up", 
    :descr => "2.) Slowly kick your feet up against the wall, still keeping your arms straight, and walk your way up the wall with your feet so that your legs and arms are fully extended.
        
        3.) Make sure that your body is straight and balanced before you move onto the next step.
        
        4.) Slowly, through your shoulders, lower yourself towards the ground so that your head almost touches the floor and you feel a stretch in your shoulders and upper body.
        
        5.) Push yourself back up until your elbows are near locked.
        
        6.) Repeat for as many reps and sets as desired.", 
    :calories => 200, 
    :intensity => 3)

Diet.create(:name => "Apple (Golden Delicious)", :descr => "", :calories => 62)
Diet.create(:name => "Orange", :descr => "", :calories => 45)
Diet.create(:name => "Pear", :descr => "", :calories => 81)
Diet.create(:name => "Grapefruit", :descr => "", :calories => 32)
Diet.create(:name => "Watermelon", :descr => "", :calories => 46)
Diet.create(:name => "Big Mac", :descr => "", :calories => 550)
Diet.create(:name => "Whopper", :descr => "", :calories => 650)
Diet.create(:name => "Frosted Flakes", :descr => "", :calories => 143)
Diet.create(:name => "Raisan Bran", :descr => "", :calories => 190)
Diet.create(:name => "Fried Chicken Breast", :descr => "", :calories => 294)
Diet.create(:name => "Broiled Chicken Breast", :descr => "", :calories => 194)
Diet.create(:name => "Sour Cream & Onion Potato Chips", :descr => "", :calories => 0)




