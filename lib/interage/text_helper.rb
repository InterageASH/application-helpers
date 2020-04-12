# frozen_string_literal: true

module Interage
  module TextHelper
    def nl2br(string, options = {})
      out = string.split("\n").map do |str|
        content_tag :div, str, options
      end

      safe_join out
    end
  end
end
