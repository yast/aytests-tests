require "aytests/spec_helper"

describe "SLES 12 (SP2+) self update" do
  include_examples "test_scripts", "self_update"
end
