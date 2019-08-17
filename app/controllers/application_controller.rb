# :nodoc:
require 'will_paginate/array'
require 'csv'
class ApplicationController < ActionController::Base
  protect_from_forgery :with => :exception
  before_action :authenticate_user!
  before_action :set_paper_trail_whodunnit

  rescue_from CanCan::AccessDenied do
    redirect_to(
      root_path,
      :alert => 'You are not authorized to access that page.'
    )
  end

  def paginate(collection, per_page = 50)
    collection.paginate :page => params[:page], :per_page => per_page
  end
end
