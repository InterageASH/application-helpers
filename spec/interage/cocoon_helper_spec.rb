# frozen_string_literal: true

module Interage
  RSpec.describe CocoonHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:cocoon_link_to_add_association) }
    it { expect(dummy_class).to respond_to(:cocoon_link_to_remove_association) }
  end
end
