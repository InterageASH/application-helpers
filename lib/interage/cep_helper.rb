# frozen_string_literal: true

require_relative 'parsers/parser_cep'

module Interage
  module CEPHelper
    def format_cep(cep)
      Interage::ParserCep.call(cep)
    end
  end
end
