require "aytests/spec_helper"

describe "SLES 15 configures routing when running first stage only," do
  include_examples "test_scripts", "first_stage_routing"
end
