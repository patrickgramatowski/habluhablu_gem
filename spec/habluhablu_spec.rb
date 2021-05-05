# frozen_string_literal: true

RSpec.describe Habluhablu do
  it "has a version number" do
    expect(Habluhablu::VERSION).not_to be nil
  end

  describe "I18n gem" do
    context "when I18n gem included" do
      let(:directory) { Dir.exist?("./config/locales") }
      it "has ./config/locales directory" do
        expect(directory).to eq true
      end
    end
  end

  describe ".hablu" do
    context "when language specified" do
      let!(:create_file) { described_class.hablu("es") }
      it "creates a file" do
        expect(File.exist?("./config/locales/es.yml")).to eq true
      end
    end

    context "when file has been created" do
      let(:content) { File.open("./languages/es.yml", &:read) }
      it "returns basic phrases in valid I18n syntax" do
        expect(File.read("./config/locales/es.yml")).to match(content)
      end
    end

    context "when other language specified" do
      let!(:create_other_file) { described_class.hablu("iw") }
      it "creates a file" do
        expect(File.exist?("./config/locales/iw.yml")).to eq true
      end
    end

    context "when other file has been created" do
      let(:content) { File.open("./languages/iw.yml", &:read) }
      it "returns basic phrases in valid I18n syntax" do
        expect(File.read("./config/locales/iw.yml")).to match(content)
      end
    end
  end
end
