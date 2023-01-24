class DramasController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]
    
    def index
      if params[:search] == nil
         @dramas = Drama.all
      elsif params[:search] == ''
         @dramas= Drama.all
      else

        @dramas = Drama.where("title LIKE ?", '%' + params[ :search] + '%')
      end

      @dramas = @dramas.page(params[:page]).per(10)

    end

    def new
        @drama = Drama.new
      end
    
      def create
        drama = Drama.new(drama_params)
        drama.user_id = current_user.id
        if drama.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @drama = Drama.find(params[:id])

      end

      def edit
        @dramas = Drama.find(params[:id])
      end

      def update
        drama = Drama.find(params[:id])
        if drama.update(drama_params)
          redirect_to :action => "show", :id => drama.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        drama = Drama.find(params[:id])
        drama.destroy
        redirect_to action: :index
      end

      def enjoy
        @dramas = Drama.all
      end
    
      def sad
        @dramas = Drama.all
      end
    
      def heartthrob
        @dramas = Drama.all
      end
  
      def breathtaking
        @dramas = Drama.all
      end
    
      def laugh
        @dramas = Drama.all
      end
  
    
      private
      def drama_params
        params.require(:drama).permit(:title, :emotion, :highlight, :recommendation)
      end

    end

   
  