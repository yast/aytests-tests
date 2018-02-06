require "aytests/spec_helper"

# This test needs rubygem-aytests (>= 1.0.41)

describe "Storage-ng default disk proposal," do
  include_examples "test_scripts", "storage_ng_automated_lvm"
end
