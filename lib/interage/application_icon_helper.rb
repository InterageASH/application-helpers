# frozen_string_literal: true

module Interage
  module ApplicationIconHelper
    DEFAULT_FONT_ICON = ENV.fetch('DEFAULT_FONT_ICON', 'fa')

    def app_icon(icon, options = {})
      case DEFAULT_FONT_ICON
      when 'fa'
        fa_icon(icon, options)
      when 'md'
        md_icon(icon, options)
      end
    end

    def app_icon_text(icon, text, options = {})
      case DEFAULT_FONT_ICON
      when 'fa'
        fa_icon_text(icon, text, options)
      when 'md'
        md_icon_text(icon, text, options)
      end
    end

    def app_icon_classes(icon, prefix, separator, options = {})
      icon_classes = icon.to_s.split(' ').uniq.join(" #{separator}-")

      "#{prefix} #{separator}-#{icon_classes} #{options[:class]}".strip
    end
  end
end
