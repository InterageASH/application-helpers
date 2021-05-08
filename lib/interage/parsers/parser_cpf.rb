# frozen_string_literal: true

module Interage
  class ParserCPF
    include Interage::NumberHelper

    ALLOWED_SIZE = 11

    def self.call(cpf)
      new(cpf).perform
    end

    def initialize(cpf)
      @cpf = only_numbers(cpf).to_i
    end

    def perform
      "#{prefix_cpf}-#{sufix_cpf}".strip if cpf.positive?
    end

    private

    attr_reader :cpf

    def prefix_cpf
      [digits[-11..-9], digits[-8..-6], digits[-5..-3]].join('.')
    end

    def sufix_cpf
      digits[-2..]
    end

    def digits
      @digits ||= cpf.to_s.rjust(ALLOWED_SIZE, '0')
    end
  end
end
