class TurbonomicController < ApplicationController
  def index
  	turbonomic_url = ENV["RAILS_TURBONOMIC_URL"]
  end
end
