class ChallengeController < ActionController::Base
    def index
      # Grab Twitter JSON
      response = HTTParty.get('http://takehome.io/twitter')
      tweets = JSON.parse(response.body)

      # Grab Facebook JSON
      response = HTTParty.get('http://takehome.io/facebook')
      statuses = JSON.parse(response.body)

      # Grab Instagram JSON
      response = HTTParty.get('http://takehome.io/instagram')
      photos = JSON.parse(response.body)

      end_result = { twitter: tweets, facebook: statuses, instagram: photos }

      render json: end_result
    end
end