module HorariosHelper
    
    def mostrar_asistencia(asiste)
        if asiste
            "Asiste"
        else
            "Falto"
        end
    end
end
