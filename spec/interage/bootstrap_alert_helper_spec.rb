# frozen_string_literal: true

module Interage
  RSpec.describe BootstrapAlertHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:bs_alert) }
    it { expect(dummy_class).to respond_to(:bs_alert_default) }
    it { expect(dummy_class).to respond_to(:bs_alert_info) }
    it { expect(dummy_class).to respond_to(:bs_alert_warning) }
    it { expect(dummy_class).to respond_to(:bs_alert_success) }
    it { expect(dummy_class).to respond_to(:bs_alert_danger) }
    it { expect(dummy_class).to respond_to(:bs_text404) }
    it { expect(dummy_class).to respond_to(:bs_male404) }
    it { expect(dummy_class).to respond_to(:bs_female404) }
    it { expect(dummy_class).to respond_to(:text404) }
    it { expect(dummy_class).to respond_to(:default404) }
    it { expect(dummy_class).to respond_to(:male404) }
    it { expect(dummy_class).to respond_to(:female404) }

    it { expect(dummy_class).to respond_to(:bootstrap_alert) }
    it { expect(dummy_class).to respond_to(:bootstrap_alert_default) }
    it { expect(dummy_class).to respond_to(:bootstrap_alert_info) }
    it { expect(dummy_class).to respond_to(:bootstrap_alert_warning) }
    it { expect(dummy_class).to respond_to(:bootstrap_alert_success) }
    it { expect(dummy_class).to respond_to(:bootstrap_alert_danger) }
    it { expect(dummy_class).to respond_to(:bootstrap_alert_not_found) }
    it { expect(dummy_class).to respond_to(:bootstrap_alert_not_found_male) }
    it { expect(dummy_class).to respond_to(:bootstrap_alert_not_found_female) }
    it { expect(dummy_class).to respond_to(:text_not_found) }
    it { expect(dummy_class).to respond_to(:default_not_found) }
    it { expect(dummy_class).to respond_to(:text_not_found_male) }
    it { expect(dummy_class).to respond_to(:text_not_found_female) }
  end
end
