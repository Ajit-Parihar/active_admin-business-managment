class HomeController < ApplicationController
  def index
      puts "all working fine"
      puts current_user.id
  end
end
