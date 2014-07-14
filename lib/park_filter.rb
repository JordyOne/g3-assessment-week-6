

class ParkFilter

  def initialize(array)
    @array = array
  end

  def find_park(id)

    @array.select do |arr|
      arr[:id] == id
      end
    end



  def find_by_country(country)
    @array.select do |arr|
      arr[:country] == "#{country.to_s}"
    end
  end
end
