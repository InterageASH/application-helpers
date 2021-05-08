# frozen_string_literal: true

module Interage
  module ApplicationIconHelper
    ALLOWED_FONT_ICONS = ['fa', 'md'].freeze
    DEFAULT_FONT_ICON = ENV.fetch('DEFAULT_FONT_ICON', 'fa')

    def app_icon(icon, options = {})
      execute_method("#{DEFAULT_FONT_ICON}_icon", icon, options)
    end

    def app_icon_text(icon, text, options = {})
      execute_method("#{DEFAULT_FONT_ICON}_icon_text", icon, text, options)
    end

    def app_icon_classes(icon, prefix, separator, options = {})
      icon_classes = icon.to_s.split.uniq.join(" #{separator}-")

      "#{prefix} #{separator}-#{icon_classes} #{options[:class]}".strip
    end

    def execute_method(method_name, *arguments)
      return unless ALLOWED_FONT_ICONS.include?(DEFAULT_FONT_ICON)

      try(method_name, *arguments)
    end
  end
end
