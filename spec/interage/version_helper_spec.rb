# frozen_string_literal: true

module Interage
  RSpec.describe VersionHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:app_version) }
    it { expect(dummy_class).to respond_to(:app_text_version) }
    it { expect(dummy_class).to respond_to(:file_version_exist?) }
  end
end
