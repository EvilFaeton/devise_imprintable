require 'test_helper'
require 'integration_tests_helper'

class InvitationTest < ActionDispatch::IntegrationTest
  def teardown
    Capybara.reset_sessions!
  end

  test 'should have empty fields by default' do
    user = create_full_user
    assert_equal user.first_sign_in_at, nil
    assert_equal user.first_sign_in_ip, nil
  end

  test 'should have not rewrite fields after they filled' do
    time_stamp = 1.year.ago
    user = create_full_user({:first_sign_in_at => time_stamp, :first_sign_in_ip => '127.0.0.1'})
    sign_in_as_user user
    user.reload
    assert_equal user.first_sign_in_at, time_stamp
    assert_equal user.first_sign_in_ip, '127.0.0.1'
  end

  test 'should fill first sign fields on first sign in' do
    new_time = 2.seconds.from_now
    Time.stubs(:now).returns(new_time)
    user = create_full_user
    sign_in_as_user user
    user.reload
    assert_equal user.first_sign_in_at, new_time
    assert_equal user.first_sign_in_ip, '127.0.0.1'
  end

end
