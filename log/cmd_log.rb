




Command	Description
rake -T
rake ffcrm:setup	 #Prepare the database and set up Fat Free CRM
rake ffcrm:setup:admin	 #Create admin user
rake ffcrm:demo:load	 #Load demo data
rake ffcrm:demo:reload
rake ffcrm:dropbox:run	 #Run dropbox crawler and process incoming emails
rake ffcrm:settings:clear	 #Clear settings from database (reset to default)
rake assets:precompile	 #Precompile static assets (javascript/css/etc.) for deployment
rake spec:acceptance	 #Run the acceptance specs in spec/acceptance
rake spec:no_acceptance	 #Run all specs except acceptance tests


rails g model entities/Product name:string measurement:string unit_price:float remark:string 
rails g controller admin/Products index new create edit update destroy

rails g model Stock name:string remark:string status:integer
rails g model Stock_Product stock_id:integer product_id:integer quantity:integer
rails g model Stock_Product_History stock_product_id:integer adjusted_by:integer adjuested_to:integer adjust_type:string remark:string
rails g controller admin/Stocks index new create edit update destroy
rails g controller admin/stock_products index new create edit update destroy





crm.flip_form("create_stock");
$("create_stock").update("
<form accept-charset=\"UTF-8\" action=\"/admin/stocks\" autocomplete=\"off\" class=\"new_stock\" data-remote=\"true\" id=\"new_stock\" method=\"post\"
                         onsubmit=\"$$(&#x27;#&#x27;+this.id+&#x27;
input[type=&quot;submit&quot;]&#x27;)[0].disabled = true\">

<div style=\"margin:0;padding:0;display:inline\">
<input name=\"utf8\" type=\"hidden\" value=\"&#x2713;\" />
<input name=\"authenticity_token\" type=\"hidden\" value=\"vuoduscvLfnTT9j5cQfbEC+6vB25cgO8dGObv6vMU/A=\" />
</div>\n
<a href=\"/admin/stocks/new?cancel=true\" class=\"close\" data-remote=\"true\" title=\"\u5173\u95ed\uff0c\u7531\">x</a>\n  \n
<div class='section'>\n
<table>\n
<tr>\n
<td>\n
<div class='label top req'>\u4ed3\u5e93\u540d:</div>\n
<input id=\"stock_name\" name=\"stock[name]\" size=\"30\" type=\"text\" />\n
</td>\n      </tr>\n      <tr>\n        <td>\n
<div class='label top req'>\u5907\u6ce8:</div>\n
<input id=\"stock_remark\" name=\"stock[remark]\" size=\"30\" type=\"text\" />\n        </td>\n      </tr>\n
<tr>\n        <td>\n          <div class='label top req'>\u72b6\u6001:</div>\n
<input checked=\"checked\" id=\"stock_status_1\" name=\"stock[status]\" type=\"radio\" value=\"1\" />\n
<div class='label top'>\u4f7f\u7528\u4e2d</div>\n
<input id=\"stock_status_0\" name=\"stock[status]\" type=\"radio\" value=\"0\" />\n
<div class='label top'>\u5df2\u5173\u95ed</div>\n        </td>\n      </tr>\n
</table>\n  </div>\n  <div class='buttonbar'>\n
<input name=\"commit\" type=\"submit\" value=\"\u521b\u5efa\u65b0\u4ed3\u5e93\" />\n    \u6216\n
<a href=\"/admin/stocks/new?cancel=true\" data-remote=\"true\">\u53d6\u6d88</a>\n  </div>\n</form>\n
");
$("empty").update("");
crm.set_title("create_stock", "\u521b\u5efa\u65b0\u4ed3\u5e93");









#################################################
#################################################

set HTTP_PROXY=http://172.30.4.63:3128
set HTTP_PROXY=http://172.20.1.46:8999

export http_proxy=http://172.20.1.46:8999
export https_proxy=http://172.20.1.46:8999
$ git config --global http.proxy http://172.20.1.46:8999

rails new Reviver
cd Reviver
# modify gemfile ,add railsadmin
bundle
rails g rails_admin:install
# rails admin code : ..\Ruby192\lib\ruby\gems\1.9.1\bundler\gems\rails_admin-f4f98ef40af1\app

# modify gemfile add cancan
bundle 
rails g cancan:ability
rails g controller Pages index about contact help
# modify routes add root :to=> 'pages#index'
rake db:migrate
rails g migration OrganizationUnitBaseStructure  #14:25 2012/5/18
rake db:rollback
rails g controller Order/part_order index add create edit save destroy
rails g controller Order/part_order_item index add create edit save destroy






rails new Mindew
# gem 'rails_admin', :git => 'https://github.com/sferik/rails_admin.git'
# gem 'thesilverspoon'
rails generate thesilverspoon:install
rake db:migrate
# change db/seeds.rb
rake db:seed
rails g cancan:ability

rails g model Part partnumber:string partname:string type:integer status:integer





$ rails generate scaffold Post name:string title:string content:text

rails new novelpool
git init
git add .
git commit -am "init"
# github.com create new repotery
git remote add origin https://brookzhang@github.com/brookzhang/novelpool.git
git push -u origin master


rails g migration initdatabase
rake db:migrate
rails g controller Pages
rails destroy controller Pages
rails g controller Pages home toplist about help
# edit routes

git config branch.master.remote origin
git config branch.master.merge refs/heads/master

git branch -m master development 
git branch -m published master 
git push origin master 

#insert test data
rails g model User
rails c
user = User.new
user.email="brook@brook.com"
......
user.save
reload! #when model class modified ,reload them in console

rails g migration AlterAuthorOfBook
rails g controller maintain/Sections index show new edit
rake routes  # show all routes

sudo gem sources -r http://rubygems.org/      #terminal ,remove source
sudo gem sources -a http://ruby.taobao.org    #add source




#============================operation============================
# 创建一个表及相关的mvc
$ rails generate model User name:string email:string    #User , not Users ,created a migrate in /db/migrate/, edit if needs.
$ rake db:migrate 
$ rails generate controller Users show                  #Users ,not User
$ rails generate controller maintian/Users show                  #Users ,not User
$ rails generate migration some_action_name_as_a_tag_only_needs_fullfil
$ rails generate migration AddPartNumberToProducts
$ rails generate migration AddPartNumberToProducts part_number:string
$ rails generate migration RemovePartNumberFromProducts part_number:string
$ rails generate migration AddDetailsToProducts part_number:string price:decimal




 

#============================rails:============================
$ rails new sample_app -T						#without testing code
$ rails server									#rails s,quit: ctrl+c
$ rails server --environment production
$ rails console									# rails c  ,quit ctrl+d
$ rails console --sandbox				#no changes
$ rails console test
$ first_user = User.first     =User.find(1) User.all

$ tail -f log/development.log					#show database log


# ============================gem:   ============================
$ set HTTP_PROXY=http://172.30.4.63:3128   #set proxy=http://172.30.4.63:3128 
$ gem install rails               # -p --http-proxy http://172.30.4.63:3128


# ============================rake:   ruby make============================
$ rake db:create
$ rake db:test:prepare
$ rake db:reset									#clear database
$ rake db:populate              # lib/tasks/sample_data.rake task :populate =>:environment 
$ rake db:rollback                #回滚到最近的一次migration执行的状态  
$ rake db:rollback STEP=3         #回滚最近的3次的迁移任务
$ rake db:migrate:redo            #重做迁移

# ============================git:============================
$ git config --global user.name "name"
$ git config --global user.email "mail"
$ git config --global http.proxy http://172.30.4.63:3128
$ git config --global alias.co checkout
$ git config --global co.editor "vim -f"
$ git config --global core.autocrlf false
$ git config --global github.user username		#connected with https 
$ git config --global github.token tokencode	#https security code
$ git init										#init repository for a new folder
$ git checkout -b modify-readme					#new branch
$ git status
$ git branch
$ git branch -d some-branch  / git branch -D modify-readme  #delte branch,-d needs merged all changes ,-D not care about changes.
$ git merge modify-readme		  
$ git add .                                     #add all include new file
$ git commit -m "message"                       #commit modified one file 
$ git commit -a                                 #commit all changes ,not include new files 
$ git commit -am "message"						          #short write
$ git mv README README.markdown                 #rename file
$ git log
$ git rm public/index.html						#tell git that a file should be removed
$ git add . / git commit -am "massage" / git checkout master / git merge other-branch / git push # merge a branch
$ git checkout master / git checkout -b new-branch      #make a new branch, and leave on new-branch


# ============================github:============================
Global setup:
 Set up git
  git config --global user.name "Brook"
  git config --global user.email brook_realize@126.com
      
Next steps:
  git init
  git add .
  git commit -m 'first commit'
  git remote add origin https://brookzhang@github.com/brookzhang/hybook.git
  git push -u origin master
  
$ git remote add origin https://brookzhang@github.com/brookzhang/fat_free_crm.git
$ git push origin master
$ git push origin master:master
$ git push
$ git clone https://brookzhang@github.com/brookzhang/first_app.git
$ git pull
$ git fetch
$ git push heroku master
$ git remote rm heroku
$ git remote add heroku git@heroku.com:brook.git


# ============================rspec:============================
$ rails generate rspec:install
$ rails generate integration_test layout_links
$ rspec spec/
$ bundle exec rspec spec/
$ time rspec spec/
$ rspec spec/models/user_spec.rb -e "should have an encrypted password attribute"





# ============================heroku:============================
$ sudo gem install heroku
$ heroku keys:add               #follow steps ,add ssh public key
$ heroku create
$ heroku rake db:migrate
$ [sudo] gem install taps
$ heroku db:push								#push data to heroku
$ heroku console                #same as rails console on heroku


# ============================vim:============================
$ :w                                            #write = save
$ :q                                            #quit
$ d                                             #delete



# ============================ubuntu:============================
$ cd                                            #change directory
$ ls                                            #list
$ mv                                            #move
$ cp                                            #copy
$ rm                                            #remove file or directory
$ rm rf											                    #remove recursive force
$ rm -rf spec/views
$ ps -e | grep apt                              #show apt* process
$ sudo killall apt                              #kill process
$ sudo killall apt-get
 
 
 
 