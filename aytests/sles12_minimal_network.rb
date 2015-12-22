require "aytests/spec_helper"

describe "SLES 12 minimal through VNC," do
  include_examples "test_scripts", "sles12_minimal_network"
end
