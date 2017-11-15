class GroupsController < ApplicationController
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
    random = 1 + rand(100)
    empty=[]

    if random <= 17 && greens != []
      greens.sample
    elsif random <= 50 && yellows != []
      yellows.sample
    elsif reds !=[]
      reds.sample
    end
  end
  helper_method :the_chosen_one
end
