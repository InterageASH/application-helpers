# frozen_string_literal: true

module Interage
  module VersionHelper
    def app_version
      return if app_text_version.blank?

      raw content_tag(:div, app_text_version, id: 'app-version')
    end

    def app_text_version
      return unless file_version_exist?

      "#{app_name} - v#{File.read('VERSION').strip}"
    end

    def file_version_exist?
      File.exist?('VERSION')
    end
  end
end
