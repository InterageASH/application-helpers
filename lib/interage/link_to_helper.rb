# frozen_string_literal: true

module Interage
  module LinkToHelper
    ASIDE_DEFAULT_CLASS = 'list-group-item'
    PREFIX_BUTTON_CLASS = 'btn btn-sm btn-outline-'
    DESTROY_CONFIRM_MESSAGE = 'Tem certeza que deseja apagar?'
    NEW_BUTTON_CLASS = 'btn text-truncate btn-outline-application'

    def aside_link_to(*args, &block)
      options = args.last.is_a?(Hash) ? args.pop : {}
      options[:class] = "#{ASIDE_DEFAULT_CLASS} #{options[:class]}"
      options[:title] = strip_tags(args.first) if block.blank?
      args.push(options)

      link_to(*args, &block)
    end

    def link_to_modal(text, url = '#', html_options = {})
      link_to text, url, html_options.merge('data-toggle': 'modal')
    end

    def link_to_new(resource, url)
      text = t('menu.links.new', model: tm(resource).downcase)

      link_to url, title: strip_tags(text), class: NEW_BUTTON_CLASS do
        app_icon_text(t('menu.icons.new'), text)
      end
    end

    def link_to_edit(url)
      link_to_default(:edit, url, class: button_class('info'))
    end

    def link_to_back(url)
      link_to_default(:back, url, class: button_class('secondary'))
    end

    def link_to_show(url)
      link_to_default(:show, url, class: button_class('dark'))
    end

    def link_to_destroy(url, html_options = {})
      html_options.merge!(method: :delete,
                          'data-confirm' => destroy_confirm_message,
                          class: button_class('danger', html_options[:class]))

      link_to_default(:destroy, url, html_options)
    end

    def link_to_default(type, url, html_options = {})
      text = t("menu.links.#{type}")
      html_options = html_options.merge(title: strip_tags(text),
                                        data: { tooltip: 'top' })

      link_to(app_icon_text(t("menu.icons.#{type}"), text), url, html_options)
    end

    def button_class(type, addicional_class = nil)
      "#{PREFIX_BUTTON_CLASS}#{type} #{addicional_class}"
    end

    def destroy_confirm_message
      t('application.destroy_confirm_message', default: DESTROY_CONFIRM_MESSAGE)
    end
  end
end
