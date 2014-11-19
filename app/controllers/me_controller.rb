class MeController < ApplicationController
  before_filter :require_login
  def index
    @user = User.where(:id => 'aaaa').first
    @user.save
  end
end
