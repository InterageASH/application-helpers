# frozen_string_literal: true

module Interage
  module BootstrapHelper
    def bootstrap_alert(type, message)
      icon = t("bootstrap.alert.icons.#{type}", default: type)

      content_tag :div, class: "no-margin alert alert-#{type}" do
        app_icon_text(icon, message)
      end
    end

    def bootstrap_alert_default(message)
      bootstrap_alert(:default, message)
    end

    def bootstrap_alert_info(message)
      bootstrap_alert(:info, message)
    end

    def bootstrap_alert_warning(message)
      bootstrap_alert(:warning, message)
    end

    def bootstrap_alert_success(message)
      bootstrap_alert(:success, message)
    end

    def bootstrap_alert_danger(message)
      bootstrap_alert(:danger, message)
    end

    def bootstrap_alert_not_found(gender, model)
      bootstrap_alert_info(text_not_found(gender, model))
    end

    def bootstrap_alert_not_found_male(model)
      bootstrap_alert_not_found(:male, model)
    end

    def bootstrap_alert_not_found_female(model)
      bootstrap_alert_not_found(:female, model)
    end

    def text_not_found(gender, model)
      default_not_found = t('bootstrap.alert.not_found', default: '')

      t("bootstrap.alert.#{gender}.not_found", model: tm(model).downcase,
                                               default: default_not_found)
    end

    def text_not_found_male(model)
      text_not_found(:male, model)
    end

    def text_not_found_female(model)
      text_not_found(:female, model)
    end
  end
end
