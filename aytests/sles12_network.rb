require "aytests/spec_helper"

describe "SLES 12 network installation" do
  # Test SLES 12 installation over VNC
  include_examples "test_scripts", "sles12_network"
end
