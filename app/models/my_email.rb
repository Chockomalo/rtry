class MyEmail < ApplicationRecord
  validates_presence_of :email, message:"Woops! vacio"
  validates_uniqueness_of :email, message:"Correo ya registrado"
   
  validates_format_of :email, with: Devise::email_regexp
end
