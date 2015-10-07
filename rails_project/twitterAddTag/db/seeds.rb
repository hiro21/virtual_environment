# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tagmaster.create(:tag_id => 1, :tag_name => 'red', :css_class => 'red')
Tagmaster.create(:tag_id => 2, :tag_name => 'blue', :css_class => 'blue')
Tagmaster.create(:tag_id => 3, :tag_name => 'yellow', :css_class => 'yellow')
