module ProfesorsHelper
    
  def calcular_edad(fch_nacimiento)
      now = Date.today
      year = now.year - fch_nacimiento.year
  end
  
end
