class PagesController < ApplicationController
  def index
  end
  
  def home
  	@integrantes = Integrante.all
  end

  def about
  end
end
