# frozen_string_literal: true

module Interage
  module CocoonHelper
    def cocoon_link_to_add_association(form, association, options = {})
      label = options[:label] || t('buttons.cocoon.add')
      html_class = options[:html_class] || 'btn btn-sm btn-outline-success'

      link_to_add_association(label, form, association, class: html_class)
    end

    def cocoon_link_to_remove_association(form, label = nil)
      label ||= t('buttons.cocoon.remove')
      html_class = 'btn btn-sm btn-outline-danger text-truncate'

      content_tag :div, class: 'cocoon-link-to-remove' do
        link_to_remove_association(label, form, class: html_class, title: label)
      end
    end
  end
end
