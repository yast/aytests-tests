require "aytests/spec_helper"

describe "SLES /sbin/insserv calls," do
  # udev network rules are not checked because they won't work
  # in this scenario.
  include_examples "test_scripts", "sles_insserv"
end
