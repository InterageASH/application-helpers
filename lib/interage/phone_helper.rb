# frozen_string_literal: true

module Interage
  module PhoneHelper
    def format_phone(phone)
      return if phone.blank?

      phone.to_s.gsub!(/[^0-9]/, '')

      "(#{phone[0, 2]}) #{phone[3, 5]}-#{phone[8, 4]}".strip
    end
  end
end
