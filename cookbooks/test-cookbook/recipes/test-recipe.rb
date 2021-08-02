#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/myfile' do
content 'Welcome to my first code on chef'
action :create
end

execute "run a script" do
  command <<-EOH
  mkdir /joshidir
  touch joshifile
  EOH
end

user "joshi" do
  action :create
end

user "archita" do
  action :create
end

group "techcoder" do
  action :create
  members 'archita'
  members 'joshi'
  append true
end
