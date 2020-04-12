# frozen_string_literal: true

module Interage
  RSpec.describe FontAwesomeHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:fa_icons) }
    it { expect(dummy_class).to respond_to(:fa_icon) }
    it { expect(dummy_class).to respond_to(:fa_fw_icon) }
    it { expect(dummy_class).to respond_to(:fa_icon_text) }
    it { expect(dummy_class).to respond_to(:fa_classes) }
  end
end
