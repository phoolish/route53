actions :create
default_action :create

attribute :name,                  :kind_of => String, :name_attribute => true
attribute :value,                 :kind_of => String
attribute :type,                  :kind_of => String
attribute :ttl,                   :kind_of => Integer, :default => 3600
attribute :zone_name,             :kind_of => String
attribute :zone_id,               :kind_of => String
attribute :aws_access_key_id,     :kind_of => String
attribute :aws_secret_access_key, :kind_of => String
attribute :update,                :kind_of => [ TrueClass, FalseClass ], :default => false

attr_accessor :exists
