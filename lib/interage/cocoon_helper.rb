# frozen_string_literal: true

module Interage
  module CocoonHelper
    DEFAULT_BTN_CLASS = 'btn btn-sm btn-outline-'

    def cocoon_link_to_add_association(form, association, options = {})
      label = options[:label] || t('buttons.cocoon.add.text')
      html_class = options[:html_class] || cocoon_default_btn_class('success')

      link_to_add_association(form, association, class: html_class) do
        app_icon_text(t('buttons.cocoon.add.icon'), label)
      end
    end

    def cocoon_link_to_remove_association(form, label = nil)
      label ||= t('buttons.cocoon.remove.text')
      html_class = cocoon_default_btn_class('danger')

      content_tag :div, class: 'cocoon-link-to-remove' do
        link_to_remove_association(form, class: html_class, title: label) do
          app_icon_text(t('buttons.cocoon.remove.icon'), label)
        end
      end
    end

    def cocoon_default_btn_class(type)
      "#{DEFAULT_BTN_CLASS}#{type} text-truncate"
    end
  end
end
