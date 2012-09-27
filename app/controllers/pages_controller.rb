class PagesController < ApplicationController
  def marketing
  	@examples = Example.all
  end

  def kudos
  end
end
