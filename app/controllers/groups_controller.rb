class GroupsController < ApplicationController
  def index
    @groups=Group.all.order(:name)
  end

  def show
    @group = Group.find(params[:id])
    @students=@group.students

  end
end
