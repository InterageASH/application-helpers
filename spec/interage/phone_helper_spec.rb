# frozen_string_literal: true

module Interage
  RSpec.describe PhoneHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:format_phone) }
  end
end
