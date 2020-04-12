# frozen_string_literal: true

require_relative 'parsers/parser_phone'

module Interage
  module PhoneHelper
    def format_phone(phone)
      ParserPhone.call(phone)
    end
  end
end
