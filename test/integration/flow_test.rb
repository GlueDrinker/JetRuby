require "test_helper"
class FlowTest < ActionDispatch::IntegrationTest
  test "can open new form" do
    
    assert_generates "/", controller: "mail", action: "new"

  end

  test "can start action create" do
    
    assert_generates "/", controller: "mail", action: "create"

  end


  # test "send form" do

  #   assert_generates new_mail_path
  #   # assert Ivan = recordings(:Ivan)
  #   # assert @request = Recording.create(Ivan.attributes)

  #   # assert @responce = DistanceMeasurer.new(@request.weight, @request.length, @request.width, @request.height, @request.destination, @request.origin)

  #   # , params: { recording: { name: "Ivan", surname: "Ivanov", patronymic: "Ivanovich", phone: "89227642504", email: "kolchuga-lev@mail.ru", weight: "100", length: "100", width: "100", height: "100", origin: "Moscow", destination: "London"}}

  #   # assert_response :redirect
  #   # follow_redirect!
  #   # assert_response :success
  #   # assert_select "p", "Имя: \n Ivan"

  # end
end
