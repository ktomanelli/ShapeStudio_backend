class Notice < ApplicationRecord
    after_save :set_notice

    def set_notice
        User.update_all("show_notice = 'true'")
    end
end
