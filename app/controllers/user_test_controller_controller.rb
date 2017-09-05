class UserTestControllerController < ApplicationController
  def show
    @test = UserTest.find params[:id]
  end
end
