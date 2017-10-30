require "aytests/spec_helper"

describe "SLES 15 Product selection by package" do
  # udev network rules are not checked because they won't work
  # in this scenario.
  include_examples "test_scripts", "sle15_product_selection_3"
end
