class BloggersController < ApplicationController 

    before_action :find_blogger, only:[:show, :edit, :update, :destroy]

    def index
        @bloggers = Blogger.all
    end

    def show
    end

    def new
        @blogger = Blogger.new
    end

    def create
        @blogger = Blogger.new(blogger_params)
        if @blogger.valid?
            @blogger.save
            redirect_to new_post_path
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def destroy
       
    end

    private

    def find_blogger
        @blogger = Blogger.find(params[:id])
    end

    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)
    end

end