require "spec_helper"

RSpec.describe ElasticHelper::Aggregation::Term do
  describe '#build' do
    let(:name) { 'my_agg' }
    let(:field) { 'my_field' }

    subject { ElasticHelper::Aggregation::Term.new(name: name, field: field) }

    it "builds the query" do
      query = JSON.parse(subject.build.target!)
      expect(query).to eq({"my_agg"=>{"terms"=>{"field"=>"my_field", "order"=>{"_term"=>"asc"}}}})
    end
  end
end