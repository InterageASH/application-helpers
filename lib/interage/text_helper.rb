# frozen_string_literal: true

module Interage
  module TextHelper
    def nl2br(string)
      out = string.to_s.split("\n").map do |str|
        [str, content_tag(:br)]
      end

      safe_join out
    end
  end
end
