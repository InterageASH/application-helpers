# frozen_string_literal: true

module Interage
  module ControllerActiveHelper
    HTML_SHOW_CLASS = ENV.fetch('CONTROLLER_SHOW_CLASS', 'show')
    HTML_ACTIVE_CLASS = ENV.fetch('CONTROLLER_ACTIVE_CLASS', 'active')

    def menu_class_show(*controllers)
      HTML_SHOW_CLASS if current_controller?(*controllers)
    end

    def menu_active(*controllers)
      HTML_ACTIVE_CLASS if current_controller?(*controllers)
    end
    alias menu_class_active menu_active

    def current_controller?(*controllers)
      controllers = controllers.is_a?(Array) ? controllers : [controllers]

      controllers.include?(params[:controller])
    end
  end
end
