require "aytests/spec_helper"

describe "SLES 15 configures DNS when running first stage only," do
  include_examples "test_scripts", "first_stage_dns"
end
