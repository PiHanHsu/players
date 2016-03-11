class PlayersController < ApplicationController

    before_action :set_player, :only => [:show, :edit, :update, :destroy]

	def index

        @all_players = Player.page(params[:page]).per(5).order(id: :asc)
	end

    def new
     @player = Player.new
    end

    def show
    end

	def create
		@player = Player.new(player_params)

		if @player.save
		flash[:notice] = "新增成功！！"
		redirect_to players_path
	    else
        render :action => :new
	    end

	end

	def edit
		
	end

	def update
		
		if @player.update(player_params)
			flash[:notice] = "更新成功！！"
			redirect_to players_path
	    else
	    	render :action => :edit
		end
	end

	def destroy
		flash[:alert] = "刪除成功！"
	    @player.destroy
	    redirect_to players_path
	end


private
  
  def set_player

    @player = Player.find(params[:id])

  end

  def player_params
  	params.require(:player).permit(:username, :first_name, :last_name)
  end

end
