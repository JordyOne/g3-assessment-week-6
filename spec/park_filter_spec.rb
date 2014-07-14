require "park_filter"

describe ParkFilter do

  before do
    @parks = [
        {
            :id=>546,
            :name=>"Kalahari Resorts",
            :city=>"Wisconsin Dells",
            :state=>"Wisconsin",
            :country=>"United States"
        },
        {
            :id=>547,
            :name=>"Little Amerricka",
            :city=>"Marshall",
            :state=>"Wisconsin",
            :country=>"United States"
        }
    ]

    @countries = [
        {
            :id=>546,
            :name=>"Kalahari Resorts",
            :city=>"Wisconsin Dells",
            :state=>"Wisconsin",
            :country=>"United States"
        },
        {
            :id=>547,
            :name=>"Little Amerricka",
            :city=>"Marshall",
            :state=>"Wisconsin",
            :country=>"United States"
        },
        {
            :id=>2,
            :name=>"Calaway Park",
            :city=>"Calgary",
            :state=>"Alberta",
            :country=>"Canada"
        }
    ]
  end

describe "#all parks with :id" do
  it "Returns all hashes with given id" do

  solution_1 = {
      546 => {
          :id=>546,
          :name=>"Kalahari Resorts",
          :city=>"Wisconsin Dells",
          :state=>"Wisconsin",
          :country=>"United States"
      }
  }
  solution_2 = {

   547 => {
          :id=>547,
          :name=>"Little Amerricka",
          :city=>"Marshall",
          :state=>"Wisconsin",
          :country=>"United States"
      }
  }
  expect(ParkFilter.new(@parks).find_park(546)).to eq([solution_1])
  expect(ParkFilter.new(@parks).find_park(547)).to eq([solution_2])
end
end
  describe "#all parks with given country" do
    it "Returns all hashes with given country" do

      solution = {
          "United States" => [
              {
                  :id=>546,
                  :name=>"Kalahari Resorts",
                  :city=>"Wisconsin Dells",
                  :state=>"Wisconsin",
                  :country=>"United States"
              },
              {
                  :id=>547,
                  :name=>"Little Amerricka",
                  :city=>"Marshall",
                  :state=>"Wisconsin",
                  :country=>"United States"
              }
          ]
      }

      expect(ParkFilter.new(@countries).find_by_country("United States")).to eq([solution])
    end
  end
end

