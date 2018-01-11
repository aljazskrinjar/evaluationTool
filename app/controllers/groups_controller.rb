class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups=Group.all.order(:name)

  end

  def show
    @group = Group.find(params[:id])
    @students=@group.students

  end

  def create
    group_params = params.require(:group).permit(:name,:start_date,:end_date)
    @group=Group.create(group_params)

    if @group.save
       redirect_to groups_path

    end

  end



  def the_chosen_one(reds,yellows,greens)
    arr = [*1..100]

    if reds == []
      arr -= [*51..100]
    end

    if greens == []
      arr -= [*1..17]
    end

    if yellows == []
      arr -= [*18..50]
    end

    random = arr.sample

    if random <= 17
      greens.sample
    elsif random <= 50
      yellows.sample
    else 
      reds.sample
    end
  end
  helper_method :the_chosen_one
end
