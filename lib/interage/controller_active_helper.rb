# frozen_string_literal: true

module Interage
  module ControllerActiveHelper
    HTML_SHOW_CLASS = ENV.fetch('CONTROLLER_SHOW_CLASS', 'show')
    HTML_ACTIVE_CLASS = ENV.fetch('CONTROLLER_ACTIVE_CLASS', 'active')

    def controller_class_active_show(*controllers)
      return unless current_controller?(*controllers)

      "#{HTML_SHOW_CLASS} #{HTML_ACTIVE_CLASS}"
    end

    def controller_class_active(*controllers)
      HTML_ACTIVE_CLASS if current_controller?(*controllers)
    end
    alias menu_active controller_class_active

    def controller_class_show(*controllers)
      HTML_SHOW_CLASS if current_controller?(*controllers)
    end
    alias menu_class_show controller_class_show

    def current_controller?(*controllers)
      Array.wrap(controllers).include?(params[:controller])
    end

    def action_class_active(*actions)
      HTML_ACTIVE_CLASS if current_action?(*actions)
    end

    def current_action?(*actions)
      Array.wrap(actions).include?("#{controller_name}/#{action_name}")
    end
  end
end
