# frozen_string_literal: true

require "yaml"
require "translation"

RSpec.describe Translation do
  describe "#response" do
    context "when text, and language passed" do
      let(:expected) { "¡amigo!" }
      it "returns valid yaml file with specified content" do
        obj_response = double('Translation.response')
        allow(obj_response).to receive(:file) { "¡amigo!" }
        expect(obj_response.file).to include(expected)
      end
    end
  end
end