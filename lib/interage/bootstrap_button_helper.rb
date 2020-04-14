# frozen_string_literal: true

module Interage
  module BootstrapButtonHelper
    DEFAULT_BTN_CLASS = 'btn btn-sm btn-outline-'

    def bootstrap_default_btn_class(type)
      default_btn_class = ENV.fetch('DEFAULT_BTN_TYPE_CLASS', DEFAULT_BTN_CLASS)

      "#{default_btn_class}#{type} text-truncate"
    end
    alias bs_default_btn_class bootstrap_default_btn_class
  end
end
