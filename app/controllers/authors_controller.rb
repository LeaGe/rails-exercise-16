class AuthorsController < ApplicationController
  def new
  end

  def create
    @authors = Authors.new(params[:autors])

    @authors.save
  end


end
