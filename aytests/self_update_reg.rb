require "aytests/spec_helper"

describe "SLES 12 (SP2+) self update using a registration server" do
  include_examples "test_scripts", "self_update_reg"
end
