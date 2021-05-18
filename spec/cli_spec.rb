# frozen_string_literal: true

require "fileutils"
require "yaml"

RSpec.describe "CLI" do
    it "does support --help flag" do
        expect { system %(habluhablu --help) }
            .to output(a_string_including("Generate files including basic phrases translations (using with I18n gem)"))
            .to_stdout_from_any_process
    end

    it "does support --keyword flag" do
        expect { system %(habluhablu --keyword some) }
            .to output(a_string_including("Everything was added successfully!"))
            .to_stdout_from_any_process
    end

    it "does support --multi flag" do
        expect { system %(habluhablu --multi iw_es) }
            .to output(a_string_including("Everything was generated successfully!"))
            .to_stdout_from_any_process
    end
end
