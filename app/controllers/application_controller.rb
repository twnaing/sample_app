class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper		#include explicitly to be available in Controller
end
