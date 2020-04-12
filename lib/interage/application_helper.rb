# frozen_string_literal: true

module Interage
  module ApplicationHelper
    include ::Interage::ApplicationIconHelper
    include ::Interage::BootstrapHelper
    include ::Interage::CEPHelper
    include ::Interage::CocoonHelper
    include ::Interage::ControllerActiveHelper
    include ::Interage::CPFCNPJHelper
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
      "#{env_name_upcase}#{page_title}#{area}#{app_name}"
    end

    def admin_page_title
      app_page_title('Administração :: ')
    end

    def devise_page_title
      app_page_title('Autenticação :: ')
    end

    def page_title
      content_for?(:page_title) ? "#{content_for(:page_title)} » " : ''
    end

    def app_name
      ENV.fetch('APP_NAME', Rails.application.class.module_parent_name)
    end

    def env_name_upcase
      return if ENV['ENV_NAME'].blank?

      "[#{ENV['ENV_NAME'].upcase}] "
    end
  end
end
