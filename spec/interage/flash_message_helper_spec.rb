# frozen_string_literal: true

module Interage
  RSpec.describe FaviconHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:favicon_link_tags) }
    it { expect(dummy_class).to respond_to(:favicon_size_link_tags) }
    it { expect(dummy_class).to respond_to(:handler_name) }
    it { expect(dummy_class).to respond_to(:favicon_options) }
    it { expect(dummy_class).to respond_to(:handler_size) }
  end
end
