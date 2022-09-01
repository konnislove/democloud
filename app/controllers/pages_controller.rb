# frozen_string_literal: true

# Controller for all generic pages
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home; end
end
