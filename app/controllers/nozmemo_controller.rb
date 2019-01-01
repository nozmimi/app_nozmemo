class NozmemoController < ApplicationController
  def index
  end

  def show
    redirect_to "/nozmemo/memo"
  end
end
