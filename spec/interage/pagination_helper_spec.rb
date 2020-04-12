# frozen_string_literal: true

module Interage
  RSpec.describe PaginationHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:pagination_links) }
  end
end
