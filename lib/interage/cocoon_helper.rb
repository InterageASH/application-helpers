# frozen_string_literal: true

module Interage
  module CocoonHelper
    def cocoon_link_to_add_association(form, association, options = {})
      label = options[:label] || t('buttons.cocoon.add.text')
      html_class = options[:html_class] || bs_default_btn_class('success')

      link_to_add_association(form, association, class: html_class) do
        app_icon_text(t('buttons.cocoon.add.icon'), label)
      end
    end

    def cocoon_link_to_remove_association(form, label = nil)
      label ||= t('buttons.cocoon.remove.text')
      html_class = bs_default_btn_class('danger')

      content_tag :div, class: 'cocoon-link-to-remove' do
        link_to_remove_association(form, class: html_class, title: label) do
          app_icon_text(t('buttons.cocoon.remove.icon'), label)
        end
      end
    end
  end
end
