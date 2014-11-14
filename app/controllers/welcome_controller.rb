class WelcomeController < ApplicationController
  def index
  end

  def tos
  end

  def policy
  end

  def about
  end

  def test
    redirect_to '/', :notice => 'notice!!!'
  end
end
