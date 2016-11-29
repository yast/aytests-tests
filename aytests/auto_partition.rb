require "aytests/spec_helper"

describe "auto-partition," do
  # udev network rules are not checked because they won't work
  # in this scenario.
  include_examples "test_scripts", "auto_partition"
end
