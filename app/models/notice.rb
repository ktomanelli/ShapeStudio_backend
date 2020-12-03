class Notice < ApplicationRecord
    def initialize
        super
        User.all().show_notice = true
    end
end
