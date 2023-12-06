class ArticalsController < ApplicationController
    before_action :set_articals, only: [:show, :edit,   :update, :destroy]

    def show
        # @artical = Artical.find(params[:id])
    end
    def index
        @artical= Artical.all
    end
    def new
        @artical= Artical.new        
    end

    def edit
        # @artical = Artical.find(params[:id])
    end

    def create
        # render plain: params[:artical]
        # @artical.new(params.require(:artical).permit(:title, :description))
        @artical = Artical.new(artical_params)
        # render plain: @artical.inspect
        if @artical.save
            flash[:notice] = 'Artical created successfully'
            # redirect_to @artical
            redirect_to articals_path 
        else
            render 'new'
        end
    end

    def update
        # @artical = Artical.find(params[:id])
        # if @artical.update(params.require(:artical).permit(:title, :description))
        if @artical.update(artical_params)
            flash[:notice] ="Artical updated successfully"
            redirect_to articals_path
        else
            render 'edit'
        end  
    end

    def destroy
        # @artical = Artical.find(params[:id])
        @artical.destroy
        redirect_to articals_path
    end

    private
    def set_articals
        @artical = Artical.find(params[:id])
    end

    def artical_params
        params.require(:artical).permit(:title, :description)
    end
end
