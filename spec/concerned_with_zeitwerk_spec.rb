# frozen_string_literal: true

require "spec_helper"

RSpec.describe ConcernedWithZeitwerk do
  let(:dummy_class) { Class.new { extend ConcernedWithZeitwerk } }

  describe "#concerned_with" do
    context "when including a single concern" do
      let(:concern_module) { Module.new }

      it "includes the concern module" do
        allow(dummy_class).to receive(:const_get).with("DummyClass::ConcernName").and_return(concern_module)
        allow_any_instance_of(dummy_class.class).to receive(:name).and_return("DummyClass")
        dummy_class.concerned_with(:concern_name)
        expect(dummy_class).to include(concern_module)
      end
    end

    context "when including multiple concerns" do
      let(:concern_module1) { Module.new }
      let(:concern_module2) { Module.new }

      it "includes multiple concern modules" do
        allow(dummy_class).to receive(:const_get).with("DummyClass::ConcernName1").and_return(concern_module1)
        allow(dummy_class).to receive(:const_get).with("DummyClass::ConcernName2").and_return(concern_module2)
        allow_any_instance_of(dummy_class.class).to receive(:name).and_return("DummyClass")
        dummy_class.concerned_with(:concern_name1, :concern_name2)
        expect(dummy_class).to include(concern_module1)
        expect(dummy_class).to include(concern_module2)
      end
    end
  end
end
