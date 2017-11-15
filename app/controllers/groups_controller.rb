class GroupsController < ApplicationController
  def index
    @groups=Group.all.order(:name)
    @group=Group.new
  end

  def show
    @group = Group.find(params[:id])
    @students=@group.students

  end

  def create
    group_params = params.require(:group).permit(:name,:start_date,:end_date)
    @group=Group.new(group_params)

    if @group.save
       redirect_to groups_path

    end

  end
end
