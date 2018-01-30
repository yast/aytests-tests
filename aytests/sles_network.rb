require "aytests/spec_helper"

describe "SLES network installation" do
  # Test SLES installation over VNC
  include_examples "test_scripts", "sles_network"
end
