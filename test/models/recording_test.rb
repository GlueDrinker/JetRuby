require "test_helper"

class RecordingTest < ActiveSupport::TestCase
  test "should save recording" do
    assert Recording.new(name: "Ivan", surname: "Ivanov", patronymic: "Ivanovich", phone: "89227642504", email: "kolchuga-lev@mail.ru", weight: "100", length: "100", width: "100", height: "100", origin: "Moscow", destination: "London").save
  end
  test "should not save recording" do
    assert_not Recording.new(surname: "Ivanov", patronymic: "Ivanovich", phone: "89227642504", email: "kolchuga-lev@mail.ru", weight: "100", length: "100", width: "100", height: "100", origin: "Moscow", destination: "London").save
  end
end
