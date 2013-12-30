class User < ActiveRecord::Base
  include ActiveModel::Validations
  attr_accessor :name, :email

	#validates_presence_of :name, :message=>"Please Enter name"
	validates :name, :presence =>  {:message=>"Please Enter name"}, :uniqueness => true, :length => { :maximum => 25 }
	#validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message=>'Plz input valid email id' }
	validates :email, :presence => true, :email_format => true
	validates :mobile_no, :presence => true, :numericality => { :message => " should be a number" }
end

