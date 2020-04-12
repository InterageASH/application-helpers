# frozen_string_literal: true

module Interage
  RSpec.describe NumberHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:default_currency_format) }
  end
end
