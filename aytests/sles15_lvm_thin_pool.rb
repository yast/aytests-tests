require "aytests/spec_helper"
# This test is currently not running bnc#1086661
describe "SLES 15 LVM thin pool checks," do
  include_examples "test_scripts", "sles15_lvm_thin_pool"
end
