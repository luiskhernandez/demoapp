puts 'Seeding data for Users, Boxes, Profiles, Training Plans, and Assigned Training Plans...'

# create_by Users
lebron = User.find_or_create_by!(email: 'lebron@nba.com', first_name: 'LeBron', last_name: 'James')
curry = User.find_or_create_by!(email: 'curry@nba.com', first_name: 'Stephen', last_name: 'Curry')
messi = User.find_or_create_by!(email: 'messi@fcb.com', first_name: 'Lionel', last_name: 'Messi')
ronaldo = User.find_or_create_by!(email: 'ronaldo@realmadrid.com', first_name: 'Cristiano', last_name: 'Ronaldo')
guardiola = User.find_or_create_by!(email: 'guardiola@fcb.com', first_name: 'Pep', last_name: 'Guardiola')
ancelotti = User.find_or_create_by!(email: 'ancelotti@realmadrid.com', first_name: 'Carlo', last_name: 'Ancelotti')
redick = User.find_or_create_by!(email: 'jjredick@lakers.com', first_name: 'JJ', last_name: 'Redick')
ker = User.find_or_create_by!(email: 'stevekerr@warriors.com', first_name: 'Steve', last_name: 'Kerr')
kuzma = User.find_or_create_by!(email: 'kuzma@nba.com', first_name: 'Kyle', last_name: 'Kuzma')
davis = User.find_or_create_by!(email: 'davis@nba.com', first_name: 'Anthony', last_name: 'Davis')
thompson = User.find_or_create_by!(email: 'thompson@nba.com', first_name: 'Klay', last_name: 'Thompson')
wiggins = User.find_or_create_by!(email: 'wiggins@nba.com', first_name: 'Andrew', last_name: 'Wiggins')
busquets = User.find_or_create_by!(email: 'busquets@fcb.com', first_name: 'Sergio', last_name: 'Busquets')
pique = User.find_or_create_by!(email: 'pique@fcb.com', first_name: 'Gerard', last_name: 'Pique')
modric = User.find_or_create_by!(email: 'modric@realmadrid.com', first_name: 'Luka', last_name: 'Modric')
benzema = User.find_or_create_by!(email: 'benzema@realmadrid.com', first_name: 'Karim', last_name: 'Benzema')
puts 'Users create_byd'

# create_by Boxes
lakers = Box.find_or_create_by!(name: 'Los Angeles Lakers', location: 'Los Angeles, CA')
warriors = Box.find_or_create_by!(name: 'Golden State Warriors', location: 'San Francisco, CA')
barcelona = Box.find_or_create_by!(name: 'FC Barcelona', location: 'Barcelona, Spain')
real_madrid = Box.find_or_create_by!(name: 'Real Madrid', location: 'Madrid, Spain')
puts 'Boxes create_byd'

# create_by Profiles for Users
lebron_profile = Profile.find_or_create_by!(user: lebron, role: :athlete, profilable: lakers)
curry_profile = Profile.find_or_create_by!(user: curry, role: :athlete, profilable: warriors)
messi_profile = Profile.find_or_create_by!(user: messi, role: :athlete, profilable: barcelona)
ronaldo_profile = Profile.find_or_create_by!(user: ronaldo, role: :athlete, profilable: real_madrid)
guardiola_profile = Profile.find_or_create_by!(user: guardiola, role: :coach, profilable: barcelona)
ancelotti_profile = Profile.find_or_create_by!(user: ancelotti, role: :coach, profilable: real_madrid)
redick_profile = Profile.find_or_create_by!(user: redick, role: :coach, profilable: lakers)
ker_profile = Profile.find_or_create_by!(user: ker, role: :coach, profilable: warriors)
kuzma_profile = Profile.find_or_create_by!(user: kuzma, role: :athlete, profilable: lakers)
davis_profile = Profile.find_or_create_by!(user: davis, role: :athlete, profilable: lakers)
thompson_profile = Profile.find_or_create_by!(user: thompson, role: :athlete, profilable: warriors)
wiggins_profile = Profile.find_or_create_by!(user: wiggins, role: :athlete, profilable: warriors)
busquets_profile = Profile.find_or_create_by!(user: busquets, role: :athlete, profilable: barcelona)
pique_profile = Profile.find_or_create_by!(user: pique, role: :athlete, profilable: barcelona)
modric_profile = Profile.find_or_create_by!(user: modric, role: :athlete, profilable: real_madrid)
benzema_profile = Profile.find_or_create_by!(user: benzema, role: :athlete, profilable: real_madrid)
puts 'Profiles create_byd'

# create_by Training Plans
game_day_plan = TrainingPlan.find_or_create_by!(name: 'Game Day Prep', description: 'Preparation routine for game day', plan_type: :strength, author: guardiola_profile)
skills_mastery_plan = TrainingPlan.find_or_create_by!(name: 'Skills Mastery', description: 'Focus on mastering dribbling and shooting', plan_type: :skills, author: ancelotti_profile)

off_season_plan = TrainingPlan.find_or_create_by!(name: 'Off-Season Strength', description: 'Strength training for off-season', plan_type: :strength, author: ker_profile)
stamina_boost_plan = TrainingPlan.find_or_create_by!(name: 'Stamina Boost', description: 'Improve stamina and endurance', plan_type: :mobility, author: redick_profile)
three_point_plan = TrainingPlan.find_or_create_by!(name: 'Three point Shooting', description: 'Improve three point shooting', plan_type: :skills, author: redick_profile)
puts 'Training Plans create_byd'

# Assign Training Plans to Profiles
AssignedTrainingPlan.find_or_create_by!(profile: messi_profile, training_plan: game_day_plan)
AssignedTrainingPlan.find_or_create_by!(profile: ronaldo_profile, training_plan: stamina_boost_plan)

AssignedTrainingPlan.find_or_create_by!(profile: lebron_profile, training_plan: three_point_plan)
AssignedTrainingPlan.find_or_create_by!(profile: kuzma_profile, training_plan: stamina_boost_plan)
AssignedTrainingPlan.find_or_create_by!(profile: davis_profile, training_plan: stamina_boost_plan)

AssignedTrainingPlan.find_or_create_by!(profile: curry_profile, training_plan: off_season_plan)
puts 'Assigned Training Plans create_byd'

puts 'Seeding complete.'
