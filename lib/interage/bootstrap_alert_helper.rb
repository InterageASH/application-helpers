# frozen_string_literal: true

module Interage
  module BootstrapAlertHelper
    def bootstrap_alert(type, message)
      icon = t("bootstrap.alert.icons.#{type}", default: type)

      content_tag :div, class: "no-margin alert alert-#{type}" do
        app_icon_text(icon, message)
      end
    end
    alias bs_alert bootstrap_alert

    def bootstrap_alert_default(message)
      bs_alert(:default, message)
    end
    alias bs_alert_default bootstrap_alert_default

    def bootstrap_alert_info(message)
      bs_alert(:info, message)
    end
    alias bs_alert_info bootstrap_alert_info

    def bootstrap_alert_warning(message)
      bs_alert(:warning, message)
    end
    alias bs_alert_warning bootstrap_alert_warning

    def bootstrap_alert_success(message)
      bs_alert(:success, message)
    end
    alias bs_alert_success bootstrap_alert_success

    def bootstrap_alert_danger(message)
      bs_alert(:danger, message)
    end
    alias bs_alert_danger bootstrap_alert_danger

    def bootstrap_alert_not_found(gender, model)
      bs_alert_info(text_404(gender, model))
    end
    alias bs_text_404 bootstrap_alert_not_found

    def bootstrap_alert_not_found_male(model)
      bs_text_404(:male, model)
    end
    alias bs_male_404 bootstrap_alert_not_found_male

    def bootstrap_alert_not_found_female(model)
      bs_text_404(:female, model)
    end
    alias bs_female_404 bootstrap_alert_not_found_female

    def text_not_found(gender, model)
      attributes = { model: tm(model).downcase, default: default_404 }

      t("bootstrap.alert.#{gender}.not_found", attributes)
    end
    alias text_404 text_not_found

    def default_not_found
      t('bootstrap.alert.not_found', default: '')
    end
    alias default_404 default_not_found

    def text_not_found_male(model)
      text_404(:male, model)
    end
    alias male_404 text_not_found_male

    def text_not_found_female(model)
      text_404(:female, model)
    end
    alias female_404 text_not_found_female
  end
end
