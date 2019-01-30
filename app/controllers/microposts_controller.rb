class MicropostsController < ApplicationController
  def index
    @microposts = Micropost.all
  end

  def create
    if params[:micropost]
      @micropost = Micropost.new(picture: params[:micropost][:picture])
      if @micropost.save
        flash[:success] = "Micropost created success!"
      else
        flash[:notice] = "Micropost created failure..."
      end
    end
    redirect_to microposts_index_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:picture)
    end
end
