# frozen_string_literal: true

module Interage
  module FlashMessageHelper
    ALIAS_TYPES = { notice: 'success', alert: 'info', error: 'danger' }.freeze

    def flash_messages
      messages ||= flashes.map do |type, message|
        bootstrap_alert(handler_type(type), handler_message(message))
      end

      safe_join(messages || [])
    end

    def flashes
      flash.to_h.symbolize_keys
    end

    def handler_type(type)
      ALIAS_TYPES[type] || type
    end

    def handler_message(messages)
      return messages unless messages.respond_to?(:map)

      errors = content_tag :ul do
        messages.map do |message|
          concat content_tag(:li, message)
        end
      end

      safe_join [errors]
    end
  end
end
