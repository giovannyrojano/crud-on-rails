require "test_helper"

class InfraccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infraccion = infraccions(:one)
  end

  test "should get index" do
    get infraccions_url
    assert_response :success
  end

  test "should get new" do
    get new_infraccion_url
    assert_response :success
  end

  test "should create infraccion" do
    assert_difference('Infraccion.count') do
      post infraccions_url, params: { infraccion: { Prestamo_id: @infraccion.Prestamo_id, estado: @infraccion.estado, fecha: @infraccion.fecha, valor: @infraccion.valor } }
    end

    assert_redirected_to infraccion_url(Infraccion.last)
  end

  test "should show infraccion" do
    get infraccion_url(@infraccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_infraccion_url(@infraccion)
    assert_response :success
  end

  test "should update infraccion" do
    patch infraccion_url(@infraccion), params: { infraccion: { Prestamo_id: @infraccion.Prestamo_id, estado: @infraccion.estado, fecha: @infraccion.fecha, valor: @infraccion.valor } }
    assert_redirected_to infraccion_url(@infraccion)
  end

  test "should destroy infraccion" do
    assert_difference('Infraccion.count', -1) do
      delete infraccion_url(@infraccion)
    end

    assert_redirected_to infraccions_url
  end
end
