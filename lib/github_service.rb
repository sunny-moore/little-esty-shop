require 'httparty'
require 'json'
class GithubService
  
  def pull_requests
    get_url('https://api.github.com/repos/sunny-moore/little-esty-shop/pulls?state=all')
  end

  def get_url(url)
    response = HTTParty.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end