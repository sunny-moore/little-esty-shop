class ApplicationController < ActionController::Base
  def index 
    @githubsearch = GithubSearch.new
  end
end
