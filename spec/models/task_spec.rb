require 'spec_helper'

describe Task do
  it { should have_many :comments }
  it { should have_many :votes }
end
