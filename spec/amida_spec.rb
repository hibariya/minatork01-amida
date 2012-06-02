require 'spec_helper'

describe Amida do
  describe '#to_s' do
    let(:amida) { Amida.new(5) }

    subject { amida.to_s }

    it { should match /A   B   C   D   E\n((\|[\s\-]{3}){4}\|\n){10}/ }
  end
end
