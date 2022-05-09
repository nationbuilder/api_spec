class ApiSpec::Spec

  endpoint 'Petitions' do |petition|

    petition.method('Index') do |method|
      method.synopsis = 'Returns the list of petitions in the site'
      method.http_method = 'GET'
      method.uri = '/sites/:site_slug/pages/petitions'
        
      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petitions'
      end
      
      method.parameter('__token') do |p|
        p.required = 'N'
        p.type = 'string'
        p.description = 'pagination token'
      end

      method.parameter('__nonce') do |p|
        p.required = 'N'
        p.type = 'string'
        p.description = 'pagination nonce'
      end

      method.parameter('limit') do |p|
        p.required = 'N'
        p.default = '10'
        p.type = 'int'
        p.description = 'maximum number of results to return'
      end
    end

    petition.method('Show') do |method|
      method.synopsis = 'Returns data for a single petition'
      method.http_method = 'GET'
      method.uri = '/sites/:site_slug/pages/petitions/:id'

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
      method.uri = '/sites/:site_slug/pages/petitions'

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
      method.uri = '/sites/:site_slug/pages/petitions/:id'

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
      method.uri = '/sites/:site_slug/pages/petitions/:id'

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

    petition.method('Signatures Index') do |method|
      method.synopsis = 'Returns list of signatures in a petition'
      method.http_method = 'GET'
      method.uri = '/sites/:site_slug/pages/petitions/:petition_id/signatures'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petition'
      end

      method.parameter('petition_id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the petition'
      end

      method.parameter('__token') do |p|
        p.required = 'N'
        p.type = 'string'
        p.description = 'pagination token'
      end

      method.parameter('__nonce') do |p|
        p.required = 'N'
        p.type = 'string'
        p.description = 'pagination nonce'
      end

      method.parameter('limit') do |p|
        p.required = 'N'
        p.default = '10'
        p.type = 'int'
        p.description = 'maximum number of results to return'
      end
    end

    petition.method('Show Signature') do |method|
      method.synopsis = 'Returns the signature'
      method.http_method = 'GET'
      method.uri = '/sites/:site_slug/pages/petitions/:petition_id/signatures/:id'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petition'
      end

      method.parameter('petition_id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the petition'
      end

      method.parameter('id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the signature'
      end
    end

    petition.method('Create Signature') do |method|
      method.synopsis = 'Creates a new signature for a petition'
      method.http_method = 'POST'
      method.uri = '/sites/:site_slug/pages/petitions/:petition_id/signatures'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petition'
      end

      method.parameter('petition_id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the petition'
      end

      method.parameter('body') do |p|
        p.required = 'Y'
        p.type = 'json'
        p.description = 'JSON representation of the new signature'
      end
    end

    petition.method('Update Signature') do |method|
      method.synopsis = 'Updates a signature for a petition'
      method.http_method = 'POST'
      method.uri = '/sites/:site_slug/pages/petitions/:petition_id/signatures/:id'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petition'
      end

      method.parameter('petition_id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the petition'
      end

      method.parameter('id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the signature'
      end

      method.parameter('body') do |p|
        p.required = 'Y'
        p.type = 'json'
        p.description = 'JSON representation of the new signature'
      end
    end

    petition.method('Destroy Signature') do |method|
      method.synopsis = 'Removes signature from petition'
      method.http_method = 'DELETE'
      method.uri = '/sites/:site_slug/pages/petitions/:petition_id/signatures/:id'

      method.parameter('site_slug') do |p|
        p.required = 'Y'
        p.type = 'string'
        p.description = 'The site holding the petition'
      end

      method.parameter('petition_id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the petition'
      end

      method.parameter('id') do |p|
        p.required = 'Y'
        p.type = 'int'
        p.description = 'The id of the signature'
      end
    end
  end
end
