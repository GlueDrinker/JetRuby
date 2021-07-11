require "application_system_test_case"
require "test_helper"
class SystemsTest < ApplicationSystemTestCase
  test "should create user" do
    visit "/"
    fill_in 'request_name', with: 'Petr'
    fill_in 'request_surname', with: 'Petrov'
    fill_in 'request_patronymic', with: 'Petrovich'
    fill_in 'request_phone', with: '89182093131'
    fill_in 'request_email', with: 'Petr@mail.br'
    fill_in 'request_weight', with: '100'
    fill_in 'request_length', with: '100'
    fill_in 'request_height', with: '100'
    fill_in 'request_width', with: '100'
    fill_in 'request_origin', with: 'Moscow'
    fill_in 'request_destination', with: 'London'
    click_button 'commit'
    assert_selector 'p', text: "Имя: Petr"
  end
end
