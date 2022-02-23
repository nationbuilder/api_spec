class ApiSpec::Spec

  endpoint 'Petitions' do |petition|

    petition.method('Index') do |method|
      method.synopsis = 'Returns the list of petitions in the site'
      method.http_method = 'GET'
      method.uri = '/v1/sites/:site_slug/pages/petitions'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petitions'
      end
    end

    petition.method('Show') do |method|
      method.synopsis = 'Returns data for a single petition'
      method.http_method = 'GET'
      method.uri = '/v1/sites/:site_slug/pages/petitions/:id'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petition'
      end

      method.parameter('id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the petition'
      end
    end

    petition.method('Create') do |method|
      method.synopsis = 'Creates a new petition'
      method.http_method = 'POST'
      method.uri = '/v1/sites/:site_slug/pages/petitions'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petition'
      end

      method.parameter('body') do |p|
        p.required = 'Y'
        p.type = 'json'
        p.description = 'JSON representation of the new petition'
      end
    end

    petition.method('Update') do |method|
      method.synopsis = 'Updates a single petition'
      method.http_method = 'PUT'
      method.uri = '/v1/sites/:site_slug/pages/petitions/:id'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petition'
      end

      method.parameter('id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the petition'
      end

      method.parameter('body') do |p|
        p.required = 'Y'
        p.type = 'json'
        p.description = 'JSON containing updates'
      end
    end

    petition.method('Destroy') do |method|
      method.synopsis = 'Removes a petition'
      method.http_method = 'DELETE'
      method.uri = '/v1/sites/:site_slug/pages/petitions/:id'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petition'
      end

      method.parameter('id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the petition'
      end
    end
  end
end
