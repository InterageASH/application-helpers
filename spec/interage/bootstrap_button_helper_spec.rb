# frozen_string_literal: true

module Interage
  RSpec.describe BootstrapButtonHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:bs_default_btn_class) }
  end
end
