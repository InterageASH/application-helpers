# frozen_string_literal: true

require 'interage/helper/version'
require 'active_support/core_ext/module'

module Interage
  module Helper
    class Error < StandardError
    end
  end

  autoload :ApplicationHelper, 'interage/application_helper'
  autoload :ApplicationIconHelper, 'interage/application_icon_helper'
  autoload :BootstrapHelper, 'interage/bootstrap_helper'
  autoload :CEPHelper, 'interage/cep_helper'
  autoload :CocoonHelper, 'interage/cocoon_helper'
  autoload :ControllerActiveHelper, 'interage/controller_active_helper'
  autoload :CPFCNPJHelper, 'interage/cpf_cnpj_helper'
  autoload :DateTimeHelper, 'interage/date_time_helper'
  autoload :FaviconHelper, 'interage/favicon_helper'
  autoload :FlashMessageHelper, 'interage/flash_message_helper'
  autoload :FontAwesomeHelper, 'interage/font_awesome_helper'
  autoload :GravatarHelper, 'interage/gravatar_helper'
  autoload :LinkToHelper, 'interage/link_to_helper'
  autoload :MaterialDesignIconsHelper, 'interage/material_design_icons_helper'
  autoload :NumberHelper, 'interage/number_helper'
  autoload :PaginationHelper, 'interage/pagination_helper'
  autoload :PhoneHelper, 'interage/phone_helper'
  autoload :TextHelper, 'interage/text_helper'
  autoload :TranslationHelper, 'interage/translation_helper'
  autoload :VersionHelper, 'interage/version_helper'
end
