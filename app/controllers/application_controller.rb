class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  rescue_from ActiveModel::ForbiddenAttributesError, :with => :bad_request
  rescue_from ActionController::UnpermittedParameters, with: :bad_request
  after_filter :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = ENV["ALLOW_ORIGIN"]
    headers["Access-Control-Allow-Methods"] = "GET, POST, OPTIONS, DELETE, PUT"
    headers['Access-Control-Request-Method'] = "*"
    headers["Access-Control-Allow-Headers"] = %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(",")
    head(:ok) if request.request_method == "OPTIONS"
  end

   private

  def record_not_found
    render :text => "404 Not Found", :status => 404
  end

  def bad_request
    render :text => "400 Bad Request", :status => 400
  end
end
