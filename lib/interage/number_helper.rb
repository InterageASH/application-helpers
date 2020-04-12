# frozen_string_literal: true

module Interage
  module NumberHelper
    def default_currency_format(number, precision = 2, unit = 'R$')
      number_to_currency(number, precision: precision, unit: unit)
    end

    def only_numbers(number)
      number.to_s.gsub(/[^0-9]/, '')
    end
  end
end
