require "aytests/spec_helper"

# Do not crash in case of an invalid registration URL is given bsc#1035908
describe "SLES 12 (>=SP3) invalid registration URL provided is reported" do
  include_examples "test_scripts", "report_invalid_regurl"
end
