# frozen_string_literal: true

module Interage
  RSpec.describe TranslationHelper do
    subject(:dummy_class) { DummyClass.new }

    before { dummy_class.extend(described_class) }

    it { expect(dummy_class).to respond_to(:translate_model_name) }
    it { expect(dummy_class).to respond_to(:translate_model_name_pluralized) }
    it { expect(dummy_class).to respond_to(:translate_model_attribute) }
    it { expect(dummy_class).to respond_to(:translate_boolean) }
    it { expect(dummy_class).to respond_to(:translate_boolean_in_icon) }
    it do
      expect(dummy_class).to respond_to(:translate_boolean_in_check_box_icon)
    end
    it { expect(dummy_class).to respond_to(:tm) }
    it { expect(dummy_class).to respond_to(:tmp) }
    it { expect(dummy_class).to respond_to(:ta) }
    it { expect(dummy_class).to respond_to(:tb) }
    it { expect(dummy_class).to respond_to(:tbi) }
    it { expect(dummy_class).to respond_to(:tbci) }
  end
end
