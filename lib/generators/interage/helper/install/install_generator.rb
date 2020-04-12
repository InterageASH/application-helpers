# frozen_string_literal: true

module Interage
  module Helper
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)

      desc 'Generates a application helper.'

      def create_application_helper
        copy_file 'application_helper.rb', application_helper_path
        copy_file 'application_helper.yml', application_locales_path
      end

      private

      def application_helper_path
        Rails.root.join('app/helpers/application_helper.rb')
      end

      def application_locales_path
        Rails.root.join('config/locales/pt-BR/application_helper.yml')
      end
    end
  end
end
