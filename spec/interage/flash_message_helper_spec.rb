# frozen_string_literal: true

module Interage
  RSpec.describe FlashMessageHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:flash_messages) }
    it { expect(dummy_class).to respond_to(:flashes) }
    it { expect(dummy_class).to respond_to(:handler_type) }
  end
end
