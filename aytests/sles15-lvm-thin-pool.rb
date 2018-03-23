require "aytests/spec_helper"

describe "SLES 15 LVM thin pool checks," do
  include_examples "test_scripts", "sles15-lvm-thin-pool"
end
