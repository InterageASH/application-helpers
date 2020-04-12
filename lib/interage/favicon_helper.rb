# frozen_string_literal: true

module Interage
  module FaviconHelper
    EXTENTION = ENV.fetch('FAVICON_EXTENTION', 'png')
    FILE_NAME = ENV.fetch('FAVICON_FILE_NAME', 'icons/apple-touch-icon')
    FAVICON_SIZES = [nil, 57, 72, 76, 114, 120, 144, 152, 180].freeze

    def favicon_link_tags
      safe_join favicon_size_link_tags.push(favicon_link_tag)
    end

    def favicon_size_link_tags
      FAVICON_SIZES.map do |s|
        favicon_link_tag(handler_name(s), favicon_options(s))
      end
    end

    def handler_name(size)
      "#{FILE_NAME}#{handler_size(size, '-')}.#{EXTENTION}"
    end

    def favicon_options(size)
      { type: 'image/png', rel: 'apple-touch-icon', sizes: handler_size(size) }
    end

    def handler_size(size, prefix = '')
      "#{prefix}#{size}x#{size}" if size.present?
    end
  end
end
