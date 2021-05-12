# frozen_string_literal: true

require "yaml"
require "translation"

RSpec.describe Translation do
  describe "#response" do
    context "when text, and language passed" do
      subject { described_class.new("friend", "es", "en") }
      let(:expected) { "¡amigo!" }
      let(:file) do
        File.open("config/locales/es.yml", "r") do |f|
          f.read
        end 
      end
      it "returns valid yaml file with specified content" do
        subject.response
        expect(file).to include(expected)
      end
    end
  end
end