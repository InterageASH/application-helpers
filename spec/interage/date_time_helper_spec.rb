# frozen_string_literal: true

module Interage
  RSpec.describe DateTimeHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:business_days_from_now) }
    it { expect(dummy_class).to respond_to(:business_day?) }
    it { expect(dummy_class).to respond_to(:format_date) }
    it { expect(dummy_class).to respond_to(:format_time) }
    it { expect(dummy_class).to respond_to(:format_datetime) }
    it { expect(dummy_class).to respond_to(:current_day_name) }
    it { expect(dummy_class).to respond_to(:current_day) }
    it { expect(dummy_class).to respond_to(:current_month_year) }
    it { expect(dummy_class).to respond_to(:current_month) }
    it { expect(dummy_class).to respond_to(:current_year) }
  end
end
