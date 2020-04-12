# frozen_string_literal: true

module Interage
  RSpec.describe ControllerActiveHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:menu_active) }
    it { expect(dummy_class).to respond_to(:current_controller?) }
  end
end
