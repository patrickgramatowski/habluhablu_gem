# frozen_string_literal: true

RSpec.describe "Habluhablu CLI" do
  command = "./exe/habluhablu --help"
  it "supports the --help flag" do
    expect { system(command) }
      .to_not output
      .to_stderr_from_any_process

    expect { system(command) }
      .to output(a_string_including("Generate files including basic phrases translations (using with I18n gem)."))
      .to_stdout_from_any_process
  end
end