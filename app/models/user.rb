class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many:assignments
  has_many:roles,:through=>:assignments
  
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  
  def asignar_rol #Luego creamos el método asignar_rol     
    @user = User.last #Luego traemos el último usuario que se registro.
    rol = Role.find_by name: 'comun' #Y tambien traemos el rol comun.
    Assignment.create(user_id: @user.id, role_id: rol.id) #Y aquí le asignamos el rol.
  end
  
  def has_role?(role_sym)
    roles.any?{|r| r.name.underscore.to_sym==role_sym}
  end

end
