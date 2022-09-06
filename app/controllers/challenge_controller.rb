class ChallengeController < ActionController::Base
    def index
      tweets = 'tweets'
      statuses = 'statuses'
      photos = 'photos'

      goal = { twitter: [tweets], facebook: [statuses], instagram: [photos] }
      
      render json: goal
    end
end