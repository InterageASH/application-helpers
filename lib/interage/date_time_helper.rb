# frozen_string_literal: true

module Interage
  module DateTimeHelper
    def business_days_from_now(days = 2)
      date = days.to_i.business_days.from_now.to_date

      return l(date) if business_day?(date)

      business_days_from_now(days + 1)
    end

    def business_day?(date)
      Holidays.on(date, :br).empty? && date.to_date.workday?
    end

    def format_date(date, date_format = :date_time)
      return if date.blank?

      l(date, format: date_format)
    end

    def format_time(time)
      time.strftime('%H:%M') if time.present?
    end

    def format_datetime(date, date_format = '%d/%m/%Y %H:%M')
      format_date(date, format: date_format)
    end

    def current_day_name
      l(Date.current, format: '%A')
    end

    def current_day
      Date.current.day
    end

    def current_month_year
      "#{current_month} / #{current_year}"
    end

    def current_month
      Date.current.strftime('%b')
    end

    def current_year
      Date.current.year
    end
  end
end
