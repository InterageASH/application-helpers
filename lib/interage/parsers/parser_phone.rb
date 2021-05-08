# frozen_string_literal: true

module Interage
  class ParserPhone
    include Interage::NumberHelper

    ALLOWED_SIZES = [13, 11, 9, 8].freeze

    def self.call(phone)
      new(phone).perform
    end

    def initialize(phone)
      @phone = only_numbers(phone).to_i.to_s
    end

    def perform
      formatted_phone
    end

    private

    attr_reader :phone

    def formatted_phone
      "#{country_code} #{ddd} #{prefix_phone}-#{sufix_phone}".strip
    end

    def country_code
      "+#{phone[-13..-12]}" if phone[-13..-12].present?
    end

    def ddd
      "(#{phone[-11..-10]})" if phone[-13..-12].present?
    end

    def prefix_phone
      phone.size == 8 ? phone[-8..-5] : phone[-9..-5]
    end

    def sufix_phone
      phone[-4..]
    end

    def valid?
      ALLOWED_SIZES.include?(phone.size)
    end
  end
end
