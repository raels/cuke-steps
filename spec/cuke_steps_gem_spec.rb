require 'spec_helper'

describe CukeStepsGem do
  it 'has a version number' do
    expect(CukeStepsGem::VERSION).not_to be nil
  end

  context "html generation" do
    before do
      system 'rm steps.html'
      system 'bundle exec cuke-steps .'
    end
    it 'generates a spec.html file' do
      expect(File.exist?('steps.html')).to eq(true)
    end
  end

  context "html generation" do
    before do
      system 'rm steps.cf'
      system 'bundle exec cuke-steps -f cf .'
    end
    it 'generates a spec.html file' do
      expect(File.exist?('steps.cf')).to eq(true)
    end
  end
end
