require "spec_helper"

RSpec.describe ElasticHelper::Filter::GeoDistance do
  describe '#build' do
    let(:lat) { 33.8650 }
    let(:lon) { 151.2094 }
    let(:distance) { '15km' }

    subject { ElasticHelper::Filter::GeoDistance.new(lat: lat, lon: lon, distance: distance) }

    it "builds the query" do
      query = JSON.parse(subject.build.target!)
      expect(query).to eq({"geo_distance"=>{"distance"=>"15km", "location"=>{"lat"=>33.865, "lon"=>151.2094}}})
    end
  end
end