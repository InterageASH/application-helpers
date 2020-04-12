# frozen_string_literal: true

module Interage
  module ApplicationHelper
    include ::Interage::ApplicationIconHelper
    include ::Interage::BootstrapHelper
    include ::Interage::CEPHelper
    include ::Interage::CNPJHelper
    include ::Interage::CocoonHelper
    include ::Interage::ControllerActiveHelper
    include ::Interage::CPFHelper
    include ::Interage::DateTimeHelper
    include ::Interage::FaviconHelper
    include ::Interage::FlashMessageHelper
    include ::Interage::FontAwesomeHelper
    include ::Interage::GravatarHelper
    include ::Interage::LinkToHelper
    include ::Interage::MaterialDesignIconsHelper
    include ::Interage::NumberHelper
    include ::Interage::PaginationHelper
    include ::Interage::PhoneHelper
    include ::Interage::TextHelper
    include ::Interage::TranslationHelper
    include ::Interage::VersionHelper

    def format_seconds(seconds)
      t('time.seconds.short', count: seconds)
    end

    def app_page_title(area = '')
      strip_tags "#{env_name_upcase}#{page_title}#{area}#{app_name}"
    end

    def admin_page_title
      app_page_title(ENV['PREFIX_ADMIN_PAGE_TITLE'])
    end

    def devise_page_title
      app_page_title(ENV['PREFIX_DEVISE_PAGE_TITLE'])
    end

    def page_title
      content_for?(:page_title) ? "#{content_for(:page_title)} » " : ''
    end

    def app_name
      ENV.fetch('APP_NAME', t('application.name', default: rails_app_name))
    end

    def rails_app_name
      rails_class = Rails.application.class

      rails_class.try(:module_parent_name) || rails_class.parent_name
    end

    def env_name_upcase
      "[#{env_name.upcase}] " if env_name.present?
    end

    def env_name
      ENV['ENV_NAME']
    end
  end
end
