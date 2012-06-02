require 'spec_helper'

describe Amida::Row do
  describe '#to_s' do
    let(:row) { Amida::Row.new(5) }

    subject { row.to_s.chomp }

    it { should match /^(\|[\s\-]{3}){4}\|$/ }
    it { should match /---/ }
  end
end
