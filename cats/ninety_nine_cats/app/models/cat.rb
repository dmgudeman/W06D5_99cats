require 'action_view'


class Cat < ApplicationRecord 
    include ActionView::Helpers::DateHelper

    CAT_COLORS = ['red', 'blue', 'tabby']

    def no_future_dates
        if birth_date > Date.today 
            errors.add(:birth_date, 'is incorrect, choose date not in future')
        end 
    end

    validates :birth_date, :color, :name, :sex,  presence:true
    validates :color, inclusion: CAT_COLORS
    validates :sex, inclusion: ['M', 'F']
    validate :no_future_dates


    def how_old
        time_ago_in_words(birth_date)
    end

end