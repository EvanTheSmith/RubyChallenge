class ChallengeController < ActionController::Base
    def index
      # Grab tweets from Twitter
      response = HTTParty.get('http://takehome.io/twitter')
      tweets = JSON.parse(response.body)

      # Grab statuses from Facebook
      response = HTTParty.get('http://takehome.io/facebook')
      statuses = JSON.parse(response.body)

      # Grab photos from Instagram
      response = HTTParty.get('http://takehome.io/instagram')
      photos = JSON.parse(response.body)

      end_result = { twitter: tweets, facebook: statuses, instagram: photos }

      render json: end_result
    end
end