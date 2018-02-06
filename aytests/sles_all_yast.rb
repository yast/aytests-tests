require "aytests/spec_helper"

describe "SLES with all yast2 packages installed" do
  include_examples "test_scripts", "sles_all_yast"
end
