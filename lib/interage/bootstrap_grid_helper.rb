# frozen_string_literal: true

module Interage
  module BootstrapGridHelper
    BS_COLUMNS_CLASSES = ['col', 'col-sm', 'col-md', 'col-lg', 'col-xl'].freeze

    def bs_columns(*columns)
      BS_COLUMNS_CLASSES.each_with_index.map do |klass, key|
        "#{klass}-#{columns[key]}"
      end.join(' ')
    end
  end
end
