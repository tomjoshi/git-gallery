# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

###################
# CREATE PROJECTS #
###################
sample_description = "Description of Project ... Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space Words to fill up more space Words to fill up more space Words to fill up more space Words to fill up more space"
Project.create(:name => "Git Gallery",        :description => sample_description, :source => "https://github.com/flatiron-school/git-gallery")        # 1
Project.create(:name => "Recipe App",         :description => sample_description, :source => "https://github.com/flatiron-school/recipes-sample-app") # 2
Project.create(:name => "Playlister",         :description => sample_description, :source => "https://github.com/micahrcorn/playlister-r")            # 3
Project.create(:name => "Library-Redux",      :description => sample_description, :source => "https://github.com/flatiron-school/library-redux")      # 4
Project.create(:name => "AppApp",             :description => sample_description, :source => "https://github.com/flatiron-school/appapp")             # 5
Project.create(:name => "Assignmentio-Redux", :description => sample_description, :source => "https://github.com/flatiron-school/assignmentio-redux") # 6
Project.create(:name => "OpenExam2",          :description => sample_description, :source => "https://github.com/flatiron-school/openexam2")          # 7
Project.create(:name => "Hire-Redux",         :description => sample_description, :source => "https://github.com/flatiron-school/hire-redux")         # 8
Project.create(:name => "Teamline-Redux",     :description => sample_description, :source => "https://github.com/flatiron-school/teamline-redux")     # 9
Project.create(:name => "Pizza",              :description => sample_description, :source => "https://github.com/flatiron-school/pizza")              # 10
################
# CREATE USERS #
################
matt   = User.create(:name => "Matt Schmaus",      	:email => "mschmaus201@gmail.com",    				:password => "password") # 1
jen    = User.create(:name => "Jennifer Campbell",  :email => "jennifer.ml.campbell@gmail.com",  :password => "password") # 2
micah  = User.create(:name => "Micah Corn",     	:email => "micah.corn@flatironschool.com",         :password => "password") # 3
des    = User.create(:name => "Desmond Rawls",   	:email => "captaingrover@gmail.com",      			:password => "password") # 4
thomas = User.create(:name => "Thomas",    			:email => "thomas.deatherage@flatironschool.com",  :password => "password") # 5
mendal = User.create(:name => "Mendal",    			:email => "mendal.kramer@flatironschool.com",      :password => "password") # 6
david  = User.create(:name => "David",     			:email => "david.manaster@flatironschool.com",     :password => "password") # 7
steven = User.create(:name => "Steven",    			:email => "steven.brooks@flatironschool.com",      :password => "password") # 8
jack   = User.create(:name => "Jack",      			:email => "jack.altman@flatironschool.com",        :password => "password") # 9
sagar  = User.create(:name => "Sagar",     			:email => "sagar.shah@flatironschool.com",         :password => "password") # 10
sam    = User.create(:name => "Samantha",  			:email => "samantha.radocchia@flatironschool.com", :password => "password") # 11
max    = User.create(:name => "Maxwell",   			:email => "maxwell.jacobson@flatironschool.com",   :password => "password") # 12
alex   = User.create(:name => "Alex",      			:email => "alex.au@flatironschool.com",            :password => "password") # 13

#########################
# ADD FEATURES TO USERS #
#########################
scraper          = Feature.create(:title => "Scraper",          :user_id => 1,  :project_id => 1) #1
check_boxes      = Feature.create(:title => "Check Box",        :user_id => 3,  :project_id => 1) #2
dossier          = Feature.create(:title => "Dossier",          :user_id => 13, :project_id => 5) #3
tracker          = Feature.create(:title => "Tracker",          :user_id => 12, :project_id => 5) #4
vote             = Feature.create(:title => "Vote",             :user_id => 8,  :project_id => 4) #5
comments         = Feature.create(:title => "Comments",         :user_id => 5,  :project_id => 4) #6
categories       = Feature.create(:title => "Categories",       :user_id => 10, :project_id => 6) #7
objectives       = Feature.create(:title => "Objectives",       :user_id => 6,  :project_id => 6) #8
interview        = Feature.create(:title => "Interviews",       :user_id => 7,  :project_id => 8) #9
records          = Feature.create(:title => "Records",          :user_id => 7,  :project_id => 8) #10
jobs             = Feature.create(:title => "Jobs",             :user_id => 7,  :project_id => 8) #11
twitter_scraper  = Feature.create(:title => "Twitter Scraper",  :user_id => 10, :project_id => 9) #12
scheduler        = Feature.create(:title => "Scheduler",        :user_id => 11, :project_id => 5) #13
feature_sections = Feature.create(:title => "Feature Sections", :user_id => 2,  :project_id => 1) #14
router           = Feature.create(:title => "Router",           :user_id => 4,  :project_id => 1) #15
shallow_routes	 = Feature.create(:title => "Shallow Routes",	:user_id => 1,  :project_id => 1, 	:description => "I kept my urls simple despite complex nested resources by using shallow routes.") #16

############################
# ADD SNIPPETS TO FEATURES #
############################
routes 		= Snippet.create(:name => "routes.rb",	:url => "https://github.com/flatiron-school/git-gallery/blob/master/config/routes.rb", 	:language => "ruby", 	:code => 
	  "resources :users do
	resources :features, :shallow => true do
		resources :snippets
		resources :uploads
	end
	resources :technologies, only: [:show]
end", 
	  :description => "I didn't want to have a double-nested url so I made features shallow. This one line immediately changes the routes visible in rake routes.", :feature_id => 16, :position => 1)

paths 		= Snippet.create(:name => "shallow paths", :url => "https://github.com/flatiron-school/git-gallery/blob/master/app/views/features/show.html.erb", :language => "ruby", :code =>
	 "#this path:
new_user_feature_snippet_path(@user, @feature)
 
#became this simpler path:
new_feature_snippet_path(@feature)",
		:description => "All feature paths previously included the user. For snippets and uploads, which belong to a feature, the user is unnecessary information. Now the paths to snippets and uploads only depend on the feature they belong to.", :feature_id => 16, :position => 2)

forms 		= Snippet.create(:name => "shallow forms", :url => "https://github.com/flatiron-school/git-gallery/blob/master/app/views/snippets/_form.html.erb", :language => "ruby", :code =>
	"#this form tag:
<%= form_for [@user, @feature, @snippet] do |f| %>
 
#became this simpler form tag:
<%= form_for [@feature, @snippet] do |f| %>",
		:description => "Similar to what we saw with the paths, all form tags became simpler. Form tags for resources nested under features went from relying on the user, the feature, and the current resource to relying on only the feature and the current resource (in this case snippets).", :feature_id => 16, :position => 3)


#######################
# CREATE TECHNOLOGIES #
#######################
rails   = Technology.create(:name => "Rails")
git     = Technology.create(:name => "Git")
js      = Technology.create(:name => "Javascript")
ruby    = Technology.create(:name => "Ruby")
css     = Technology.create(:name => "CSS")
html    = Technology.create(:name => "HTML5")
jquery  = Technology.create(:name => "jQuery")
php     = Technology.create(:name => "PHP")
webgl   = Technology.create(:name => "WebGL")
json    = Technology.create(:name => "JSON")
python  = Technology.create(:name => "Python")
sinatra = Technology.create(:name => "Sinatra")
java    = Technology.create(:name => "Java")
objc    = Technology.create(:name => "Objective C")
sql     = Technology.create(:name => "SQL")


#####################################
# CONNECT FEATURES AND TECHNOLOGIES #
#####################################
rails.features   << records
rails.features   << router
rails.features   << interview
rails.features   << scheduler
rails.features   << dossier
ruby.features    << records
ruby.features    << twitter_scraper
ruby.features    << check_boxes
ruby.features    << scheduler
ruby.features    << interview
git.features     << check_boxes
git.features     << scheduler
git.features     << interview
json.features    << scraper          
jquery.features  << check_boxes      
css.features     << dossier          
css.features     << tracker          
jquery.features  << vote             
jquery.features  << comments         
js.features      << categories       
js.features      << objectives       
html.features    << interview        
sql.features     << records          
sinatra.features << jobs             
json.features    << twitter_scraper  
python.features  << scheduler        
html.features    << feature_sections 
sql.features     << router

rails.save
git.save
js.save     
ruby.save
css.save
html.save 
jquery.save
php.save
webgl.save
json.save
python.save
sinatra.save
java.save
objc.save
sql.save


