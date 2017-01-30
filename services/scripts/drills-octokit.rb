#!/bin/ruby
# Use Awesome Print for JSON output
require "awesome_print"
require "json"
require  "date"
# Use octokit for interacting with GitHub
require "octokit"

# Use HTTParty to interact with other REST APIs
require "httparty"
# This is for discourse :
discourse_api_url = "http://discourse.sci-gaia.eu"
discourse_api_key = ENV["discourse_api_key"]
post = JSON.parse(File.read("../static-files/post_templates/readiness_post.json"))
# Construct the title
post["title"] = "#{post["title"]}-"
# Get categories

categories = HTTParty.get("#{discourse_api_url}/categories.json")
sandbox_category = categories["category_list"]["categories"].select{ |c| c["slug"] == "sandbox"}
sandbox_category_id = sandbox_category[0]["id"]

# Get the list of topics in that category
topics = HTTParty.get("#{discourse_api_url}/c/#{sandbox_category_id}.json")
# is there a topic with this title ?
if topics["topic_list"]["topics"].any? { |t| t["title"] ==  }


  ap post
  # Update post title for

  discourse_post_uri = discourse_api_url + "/posts"
  options = { :api_key => discourse_api_key, :api_username => 'system', :category => "sandbox"}
  response = HTTParty.post(discourse_post_uri, body: post, query: options)

  # check if the title has already been created - if so, update the topic with a new post
  if response["errors"].to_s.match('Title has already been used')
    puts "the title has already been taken, finding that one"
  end



octobot = Octokit::Client.new(:login => 'brucellino', :access_token => ENV['github_token'])
github_org = "AAROC"
github_repo = "e-Research-Hackfest-Prep"
# Use the Github API naming schema for the variables
milestone_title = "Aspring to Addis"
project_name = "Hackfest Drills"
issue_labels = ["todo", "checking", "missing", "done"]

############# milestones ###############################
milestones = octobot.list_milestones("#{github_org}/#{github_repo}")
puts "There are #{milestones.count} milestones"

# print the milestone titles

milestones.each do |m|
  puts m["title"]
end

# find the milestone with the right title

milestone = milestones.select {|m| m["title"] == "Aspiring to Addis" } # something wierd about how we match the titles here


## /milestones #########################################
############# issues #################################


## /issues ###########################################
############## labels ################################


## /labels ###########################################


## Create the issues.

issue_list = JSON.parse(File.read('drill_issues.json'))
ap issue_list
puts "We have to create #{issue_list["issues"].count} issues to create"

issue_list["issues"].each do |issue|
  puts "creating issue #{issue["id"]}"
  puts issue["name"]
  issue_content = JSON.parse(File.read("../static-files/issue_templates/#{issue["template_file"]}"))
  ap issue_content
  #issue_body = octobot.markdown('#{issue_content}')
  #octobot.create_issue("#{github_org}/#{github_repo}",issue_content["title"],issue_content["body"])
end

puts "creating the topic"


#ap response