# frozen_string_literal: true

module Interage
  RSpec.describe MaterialDesignIconsHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:md_icon) }
    it { expect(dummy_class).to respond_to(:md_icon_text) }
    it { expect(dummy_class).to respond_to(:md_classes) }
  end
end
