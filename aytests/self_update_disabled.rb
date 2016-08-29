require "aytests/spec_helper"

describe "SLES 12 (SP2+) disabling self update" do
  include_examples "test_scripts", "self_update_disabled"
end
