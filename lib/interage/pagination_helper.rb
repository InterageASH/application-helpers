# frozen_string_literal: true

module Interage
  module PaginationHelper
    def pagination_links(collection)
      return if collection.empty?

      render 'kaminari/pagination', collection: collection
    end
  end
end
