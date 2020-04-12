# frozen_string_literal: true

module Interage
  RSpec.describe LinkToHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:aside_link_to) }
    it { expect(dummy_class).to respond_to(:link_to_modal) }
    it { expect(dummy_class).to respond_to(:link_to_new) }
    it { expect(dummy_class).to respond_to(:link_to_edit) }
    it { expect(dummy_class).to respond_to(:link_to_back) }
    it { expect(dummy_class).to respond_to(:link_to_show) }
    it { expect(dummy_class).to respond_to(:link_to_destroy) }
    it { expect(dummy_class).to respond_to(:link_to_default) }
    it { expect(dummy_class).to respond_to(:button_class) }
  end
end
