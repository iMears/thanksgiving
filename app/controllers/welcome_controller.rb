class WelcomeController < ApplicationController
  def index
    @tweet = get_tweet
  end

  private

  def get_tweet
    $client.search("thanksgiving -rt", result_type: "recent").take(1).first
  end
end
