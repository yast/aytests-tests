require "aytests/spec_helper"

describe "SLES 15 import Firewalld based profile checks," do
  include_examples "test_scripts", "sles15_firewalld"
end
