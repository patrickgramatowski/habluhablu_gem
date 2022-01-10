# frozen_string_literal: true

require "json"

RSpec.describe Languages do
  describe "#render" do
    context "when invalid langauge passed" do
      let(:obj) { described_class.new("isss").render }
      it "throws an error" do
        expect { obj }.to raise_error(Habluhablu::NoLanguageSymbolYet)
      end
    end
  end

  describe "#render_json" do
    context "when valid language's symbol passed" do
      let!(:generate_files) { described_class.new("es").render_json("ar_iw") }
      let(:expected) { "العربية" }
      let!(:content) do
        File.open("config/locales/ar.json", "r") do |f|
          $DATA = f.read
        end
      end
      it "returns json file" do
        expect($DATA).to include(expected)
      end
    end
  end
end
