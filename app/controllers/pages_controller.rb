class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def home2
  end

  def home3
  end
end
