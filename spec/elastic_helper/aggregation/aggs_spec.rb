require "spec_helper"

RSpec.describe ElasticHelper::Aggregation::Aggs do
  describe '#build' do
    let(:agg1) { double(:agg1, block: Proc.new { |query| query.magg1 'myagg1' }) }
    let(:agg2) { double(:agg2, block: Proc.new { |query| query.magg2 'myagg2' }) }

    subject { ElasticHelper::Aggregation::Aggs.new }
    before do
      subject.add(agg1)
      subject.add(agg2)
    end

    it "builds the query" do
      query = JSON.parse(subject.build.target!)
      expect(query).to eq({"aggs"=>{"magg1"=>"myagg1", "magg2"=>"myagg2"}})
    end
  end
end