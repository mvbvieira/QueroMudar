class HomeController < ApplicationController
  CONFIGURATIONS = Rails.application.config_for(:name_system).freeze

  def index
    @name_system ||= CONFIGURATIONS.fetch('name')
  end
end
