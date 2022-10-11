class HomeController < ApplicationController
    before_action :authenticate_user!
    

    def index
        @lists = List.all
    end
      
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

end