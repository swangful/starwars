RSpec.describe "/api/people/" do
  describe "GET /people/" do
    uri = "/api/people/"

    it "returns all known individuals in the star wars universe" do
      response = Api.connection.get uri
      expect(response.status).to eq 200
      expect(response.body).to be_truthy
      expect(response.body['count']).to eq 82
    end

    context "when seraching for individuals taller than 200" do
      it "successfully returns all applicable individuals" do
        known_tall_folks = ["Darth Vader",
                            "Chewbacca",
                            "Roos Tarpals",
                            "Rugor Nass",
                            "Yarael Poof",
                            "Lama Su",
                            "Taun We",
                            "Grievous",
                            "Tarfful",
                            "Tion Medon"]
        array_of_tall_folks = ApiHelpers.return_people_taller_than(200)
        expect(array_of_tall_folks.count).to eq 10
        expect(array_of_tall_folks).to eq known_tall_folks
      end
    end
  end
end
