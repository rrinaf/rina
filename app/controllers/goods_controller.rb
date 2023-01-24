class GoodsController < ApplicationController
    def create
        good = current_user.goods.create(drama_id: params[:drama_id]) #user_idとtweet_idの二つを代入
        redirect_back(fallback_location: root_path)
      end
    
      def destroy
        good = Good.find_by(drama_id: params[:drama_id], user_id: current_user.id)
        good.destroy
        redirect_back(fallback_location: root_path)
      end
    
end
