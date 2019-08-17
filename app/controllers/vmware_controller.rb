class VmwareController < ApplicationController
  def index
  	vm_url = ENV["RAILS_VCENTER_URL"] + "/rest/vcenter/vm"
    auth_vcenter(vm_url)

    @vmresults = HTTParty.get(vm_url, 
        :headers => { 'Content-Type' => 'application/json',
                      'vmware-api-session-id' => @vctoken }, 
        :verify => false)
  end

  def auth_vcenter(vm_url)
      # Create the session URL by concatenating the vCenter URL + the session path
      vcenter_session_url = ENV["RAILS_VCENTER_URL"] + "/rest/com/vmware/cis/session"
      # get a token bu passing basic auth to the cis/session path
      authtokenrequest = HTTParty.post(vcenter_session_url,
        headers: {'Content-Type' => 'application/json',
                    'vmware-use-header-authn' => 'BASIC'},
        basic_auth: { username: ENV["RAILS_VCENTER_USER"],
                        password: ENV["RAILS_VCENTER_PASS"] },
        :verify => false)
      # Pull the token from the JSON result
      @vctoken = authtokenrequest["value"]
    end
end
