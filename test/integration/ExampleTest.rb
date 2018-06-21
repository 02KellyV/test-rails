require "test_helper"

class ExampleTest < ActionDispatch::IntegrationTest
  fixtures :users

  def get_user
    # get the login page
    get "/users"
    assert_equal 200, status
  end

  def post_user
    post "/users", params: { 
      nombre: "usuario1",
      email: "usuario@emeil.com"
    }
  end
end
