# frozen_string_literal: true

require "fileutils"
require "yaml"

RSpec.describe Habluhablu do
  it "has a version number" do
    expect(Habluhablu::VERSION).not_to be nil
  end

  describe ".keyword" do
    context "when a keyword passed" do
      let(:expected) { "some" }
      let!(:create_file) { described_class.hablu("es") }
      let!(:create_keyword) { described_class.keyword("some") }
      it "includes the keyword" do
        File.open("./config/locales/es.yml", "r") do |f|
           $data = f.read
        end
        expect($data).to include(expected)
      end
    end
  end

  describe ".render_sample" do
    context "when files passed and sample exists" do
      let(:expected) { "some" }
      let!(:create_file) do 
        File.open("config/locales/sample.yml", "a+") do |f|
          f.write("sample" => {"some" => "123"}.to_yaml) 
        end
      end
      let!(:create_sample) { described_class.render_sample("ar_pl") }
      it "includes the sample" do
        File.open("./config/locales/ar.yml", "r") do |f|
          $data = f.read
        end
        expect($data.to_s).to include(expected)
      end
    end
  end

  describe "I18n gem" do
    before(:all) do
      if Dir.exist?("./config/locales") == false
        Dir.mkdir("config")
        Dir.mkdir("config/locales")
      end
    end
    context "when I18n gem included" do
      let(:directory) { Dir.exist?("./config/locales") }
      it "has ./config/locales directory" do
        expect(directory).to eq true
      end
    end

    context "when I18n gem is not included" do
      let(:language) { "es" }
      let(:create_file) { described_class.hablu(language) }
      let!(:directory) { FileUtils.rm_rf("config") }
      it "has not ./config/locales directory" do
        expect { create_file }.to raise_error(Habluhablu::GemI18nError)
      end
    end
  end

  describe ".hablu" do
    before(:all) do
      if Dir.exist?("./config/locales") == false
        Dir.mkdir("config")
        Dir.mkdir("config/locales")
      end
    end

    context "when language specified" do
      let!(:create_file) { described_class.hablu("es") }
      it "creates a file" do
        expect(File.exist?("./config/locales/es.yml")).to eq true
      end
    end

    context "when file has been created" do
      let(:content) { "--" }
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
      let(:content) { "--" }
      it "returns basic phrases in valid I18n syntax" do
        expect(File.read("./config/locales/iw.yml")).to match(content)
      end
    end

    context "when specified language's symbol does not exist" do
      let(:language) { "wrong" }
      let(:wrong_language) { described_class.hablu(language) }
      it "throws an error" do
        expect { wrong_language }.to raise_error(Habluhablu::WrongSymbolError)
      end
    end
  end
end
