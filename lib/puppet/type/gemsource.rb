Puppet::Type.newtype(:gemsource) do

  ensurable
  @doc = "Manage rubygem sources"

  newparam(:url, :namevar => true) do
    desc "URL of the gem source"
  end

  newparam(:pe) do
    desc "When set to true will force /opt/puppet/bin/gem"
    defaultto :false
    newvalues(:true, :false)
  end
  
  newparam(:globalconfig) do
    desc "If set to true, the resource will be set globally for the system using /etc/gemrc. Defaults to false"
    defaultto :false
    newvalues(:true, :false)
  end

end


