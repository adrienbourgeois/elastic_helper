require "spec_helper"

RSpec.describe ElasticHelper::Filter::And do
  describe '#build' do
    let(:lat) { 33.8650 }
    let(:lon) { 151.2094 }
    let(:distance) { '15km' }
    let(:filter) { double(:filter, block: Proc.new { |query| query.hello 'world' }) }

    subject { ElasticHelper::Filter::And.new }
    before { subject.add(filter) }

    it "builds the query" do
      query = JSON.parse(subject.build.target!)
      expect(query).to eq({"and"=>[{"hello"=>"world"}]})
    end
  end
end