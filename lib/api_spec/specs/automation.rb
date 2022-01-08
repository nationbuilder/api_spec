class ApiSpec::Spec
  endpoint 'Automations' do |automation|
    automation.method('Index') do |method|
      method.synopsis = 'Shows the list of on-demand automations'
      method.http_method = 'GET'
      method.uri = '/v1/automations'
    end
  end
end
