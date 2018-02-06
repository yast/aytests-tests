require "aytests/spec_helper"

describe "SLES network installation without host section" do
  # Test SLES installation over VNC
  include_examples "test_scripts", "sles_network_without_hosts"
end
