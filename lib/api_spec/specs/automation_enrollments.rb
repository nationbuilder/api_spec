class ApiSpec::Spec

  endpoint 'Automation Enrollments' do |automation_enrollments|

    automation_enrollments.method('Index') do |method|
      method.synopsis = 'Shows the list of automation enrollments'
      method.http_method = 'GET'
      method.uri = '/v1/automations/:id/automation_enrollments'

      method.parameter('id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The Automation ID that contains all automation enrollments requested'
      end
    end

    automation_enrollments.method('Create') do |method|
      method.synopsis = 'Creates an automation enrollment with the provided data'
      method.http_method = 'POST'
      method.uri = '/v1/automations/:id/automation_enrollments'

      method.parameter('body') do |p|
        p.required = 'Y'
        p.type = 'json'
        p.description = 'JSON representation of the new automation enrollment'
      end
    end

    automation_enrollments.method('Destroy') do |method|
      method.synopsis = 'Destroy a specific Automation Enrollment based on the signup'
      method.http_method = 'DELETE'
      method.uri = '/v1/automations/:id/automation_enrollments'

      method.parameter('signup_id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The Signup id of the automation enrollment'
      end

      method.parameter('id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The Automation id of the automation enrollment'
      end
    end
  end
end
