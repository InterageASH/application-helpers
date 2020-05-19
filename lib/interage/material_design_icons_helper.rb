# frozen_string_literal: true

module Interage
  module MaterialDesignIconsHelper
    MD_ICON_TEXT_CLASS = 'text'

    def md_icon(icon, options = {})
      icon_classes = icon.to_s.split(' ')
      icon = icon_classes.shift

      content_tag :i, class: md_classes(icon, options) do
        t("icons_alias.#{icon}", default: icon)
      end
    end

    def md_icon_text(icon, text, options = {})
      content_tag :span do
        concat md_icon(icon, options)
        concat content_tag(:span, " #{text}", class: MD_ICON_TEXT_CLASS)
      end
    end

    def md_classes(icon, options = {})
      app_icon_classes(icon, 'material-icons', 'md', options)
    end
  end
end
