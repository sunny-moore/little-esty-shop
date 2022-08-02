require 'rails_helper'
require 'httparty'
require 'json'
require './lib/github_search'

RSpec.describe 'Github Api processes' do
  it 'can return the number of merged PRs' do

    githubsearch = GithubSearch.new
    mergedPR = githubsearch.pull_request_information
    visit admin_merchants_path
    expect(page).to have_content("Merged Pull Requests: #{mergedPR}")
  end
end