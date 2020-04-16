# frozen_string_literal: true

# Root controller (others inherit from this one)
class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
end
