require './lib/github_service'

class GithubSearch

  def pull_request_information
    @_pr_information ||= service.pull_requests
    merged = []
    @_pr_information.each do |pr|
      if !pr[:merged_at].nil?
        merged << pr
      end
    end
    merged.size
    #binding.pry
  end

  def service
    GithubService.new
  end
end