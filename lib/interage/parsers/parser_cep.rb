# frozen_string_literal: true

module Interage
  class ParserCep
    include Interage::NumberHelper

    ALLOWED_SIZE = 8

    def self.call(cep)
      new(cep).perform
    end

    def initialize(cep)
      @cep = only_numbers(cep).to_i
    end

    def perform
      "#{digits[-8..-4]}-#{digits[-3..]}" if cep.positive?
    end

    private

    attr_reader :cep

    def digits
      @digits ||= cep.to_s.rjust(ALLOWED_SIZE, '0')
    end
  end
end
