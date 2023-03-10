require 'action_view'


class Cat < ApplicationRecord 
    include ActionView::Helpers::DateHelper

    CAT_COLORS = ['red', 'blue', 'tabby']

    def no_future_dates
        if :birth_date > :present_day
            errors.add(:birth_date, 'choose date not in future')
        end 
    end

    validates :birth_date, :color, :name, :sex,  presence:true
    validates :color, inclusion: CAT_COLORS
    validates :sex, inclusion: ['M', 'F']
    validate :no_future_dates


    def how_old
        @birth_date.time_ago_in_words(from_time)
    end

end