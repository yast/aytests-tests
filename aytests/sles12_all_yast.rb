require "aytests/spec_helper"

describe "SLES 12 with all yast2 packages installed" do
  include_examples "test_scripts", "sles12_all_yast"
end
