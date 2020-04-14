# frozen_string_literal: true

module Interage
  RSpec.describe BootstrapBadgeHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:bs_badge) }
    it { expect(dummy_class).to respond_to(:bs_badge_default) }
    it { expect(dummy_class).to respond_to(:bs_badge_primary) }
    it { expect(dummy_class).to respond_to(:bs_badge_secondary) }
    it { expect(dummy_class).to respond_to(:bs_badge_success) }
    it { expect(dummy_class).to respond_to(:bs_badge_danger) }
    it { expect(dummy_class).to respond_to(:bs_badge_warning) }
    it { expect(dummy_class).to respond_to(:bs_badge_info) }
    it { expect(dummy_class).to respond_to(:bs_badge_light) }
    it { expect(dummy_class).to respond_to(:bs_badge_dark) }
  end
end
