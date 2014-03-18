class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  rescue_from ActiveModel::ForbiddenAttributesError, :with => :bad_request
  rescue_from ActionController::UnpermittedParameters, with: :bad_request

   private

  def record_not_found
    render :text => "404 Not Found", :status => 404
  end

  def bad_request
    render :text => "400 Bad Request", :status => 400
  end
end
