# frozen_string_literal: true

module Interage
  RSpec.describe DateTimeHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:business_days_from_now) }
    it { expect(dummy_class).to respond_to(:business_day?) }
    it { expect(dummy_class).to respond_to(:format_date) }
    it { expect(dummy_class).to respond_to(:format_time) }
  end
end
