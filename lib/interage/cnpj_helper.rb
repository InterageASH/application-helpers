# frozen_string_literal: true

require_relative 'parsers/parser_cnpj'

module Interage
  module CNPJHelper
    def format_cnpj(cnpj)
      ParserCNPJ.call(cnpj)
    end
  end
end
