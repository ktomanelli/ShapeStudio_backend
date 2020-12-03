class NoticesController < ApplicationController

    def show
        notice = Notice.last()
        render json: {notice:notice}
    end

end