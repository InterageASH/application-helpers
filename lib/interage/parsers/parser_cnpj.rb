# frozen_string_literal: true

module Interage
  class ParserCNPJ
    include Interage::NumberHelper

    ALLOWED_SIZE = 14

    def self.call(cnpj)
      new(cnpj).perform
    end

    def initialize(cnpj)
      @cnpj = only_numbers(cnpj).to_i
    end

    def perform
      "#{prefix_cnpj}/#{sufix_cnpj}".strip if cnpj.positive?
    end

    private

    attr_reader :cnpj

    def prefix_cnpj
      [digits[-14..-13], digits[-12..-10], digits[-9..-7]].join('.')
    end

    def sufix_cnpj
      [digits[-6..-3], digits[-2..]].join('-')
    end

    def digits
      @digits ||= cnpj.to_s.rjust(ALLOWED_SIZE, '0')
    end
  end
end
