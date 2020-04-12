# frozen_string_literal: true

module Interage
  RSpec.describe ApplicationHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:format_seconds) }
    it { expect(dummy_class).to respond_to(:app_page_title) }
    it { expect(dummy_class).to respond_to(:admin_page_title) }
    it { expect(dummy_class).to respond_to(:devise_page_title) }
    it { expect(dummy_class).to respond_to(:page_title) }
    it { expect(dummy_class).to respond_to(:app_name) }
    it { expect(dummy_class).to respond_to(:env_name_upcase) }
  end
end
