# frozen_string_literal: true

module Interage
  module BootstrapBadgeHelper
    def bootstrap_badge(type, message, options = {})
      options[:class] = "badge badge-pill badge-#{type} #{options[:class]}"

      content_tag :span, message, options
    end
    alias bs_badge bootstrap_badge

    def bs_badge_default(message, options = {})
      bs_badge(:default, message, options)
    end

    def bs_badge_primary(message, options = {})
      bs_badge(:primary, message, options)
    end

    def bs_badge_secondary(message, options = {})
      bs_badge(:secondary, message, options)
    end

    def bs_badge_success(message, options = {})
      bs_badge(:success, message, options)
    end

    def bs_badge_danger(message, options = {})
      bs_badge(:danger, message, options)
    end

    def bs_badge_warning(message, options = {})
      bs_badge(:warning, message, options)
    end

    def bs_badge_info(message, options = {})
      bs_badge(:info, message, options)
    end

    def bs_badge_light(message, options = {})
      bs_badge(:light, message, options)
    end

    def bs_badge_dark(message, options = {})
      bs_badge(:dark, message, options)
    end
  end
end
