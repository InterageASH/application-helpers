# frozen_string_literal: true

module Interage
  module FontAwesomeHelper
    FA_ICON_TEXT_CLASS = 'text'

    def fa_icons
      t('icons_alias', default: {}).keys
    end

    def fa_icon(icon, options = {})
      content_tag :i, nil, options.merge(class: fa_classes(icon, options))
    end

    def fa_fw_icon(icon, options = {})
      fa_icon("fw #{icon}", options)
    end

    def fa_icon_text(icon, text, options = {})
      content_tag :span do
        concat fa_fw_icon(icon, options)
        concat content_tag(:span, text, class: FA_ICON_TEXT_CLASS)
      end
    end

    def fa_classes(icon, options = {})
      icon_classes = icon.to_s.split(' ').uniq.join(' fa-')

      "fa fa-#{icon_classes} #{options[:class]}".strip
    end
  end
end
