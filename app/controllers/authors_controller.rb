class AuthorsController < ApplicationController
  def new
  end

  def create
      authors.create(params[:first_name])
      authors.create(params[:last_name])
      authors.create(params[:homepage])
  end


end
