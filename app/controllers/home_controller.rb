class HomeController < ApplicationController
  def index
    puts current_user.inspect
    puts "all okey working fine"
    user = User.find(1)
    puts " Role of current user #{current_user.role}"
  end
end
