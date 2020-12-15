class NoticesController < ApplicationController

    def show
        if(@user.show_notice==true) 
            notice = Notice.last()
            render json: {notice:notice}
        else
            render json: {notice:null}
        end
    end

end