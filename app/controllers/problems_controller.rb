class ProblemsController < ApplicationController
  def index
    @problems = Problem.published
  end
end
