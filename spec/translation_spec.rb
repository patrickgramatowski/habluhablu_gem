# frozen_string_literal: true

require "yaml"
require "translation"

RSpec.describe Translation do
  describe "#response" do
    context "when text, and language passed" do
      let(:translator) { described_class.new("friend", "es") }
      let(:api_google) { double("Google Api") }
      let(:expected) { "amigo" }
      it "returns valid translation" do
        allow(api_google)
          .to receive(:request)
          .with("friend")
          .and_return("amigo")
        allow(translator)
          .to receive(:response)
          .and_return(api_google.request("friend"))
        expect(translator.response).to include(expected)
      end
    end
  end
end