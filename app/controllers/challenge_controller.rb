class ChallengeController < ActionController::Base
    def index
      # Grab tweets from Twitter
      response = HTTParty.get('https://takehome.io/twitter')
      response.content_type == 'application/json' ? tweets = JSON.parse(response.body) : tweets = { error: "tweets could not be loaded" }

      # Grab statuses from Facebook
      response = HTTParty.get('https://takehome.io/facebook')
      response.content_type == 'application/json' ? statuses = JSON.parse(response.body) : statuses = { error: "statuses could not be loaded" }

      # Grab photos from Instagram
      response = HTTParty.get('https://takehome.io/instagram')
      response.content_type == 'application/json' ? photos = JSON.parse(response.body) : photos = { error: "photos could not be loaded" }

      end_result = { twitter: tweets, facebook: statuses, instagram: photos }

      render json: end_result
    end
end