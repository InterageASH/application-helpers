# frozen_string_literal: true

module Interage
  RSpec.describe ApplicationIconHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:app_icon) }
    it { expect(dummy_class).to respond_to(:app_icon_text) }
    it { expect(dummy_class).to respond_to(:app_icon_classes) }
  end
end
