# frozen_string_literal: true

require_relative 'parsers/parser_cpf'

module Interage
  module CPFHelper
    def format_cpf(cpf)
      ParserCPF.call(cpf)
    end
  end
end
