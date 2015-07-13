pdf.text "Alumno ##{@alumno.id}", :size => 30, :style => :bold, :mode => :stroke

stroke_horizontal_rule

pdf.move_down(30)

text "Ficha: #{@alumno.ficha}"

text "nombre: #{@alumno.nombre}"

text "Primer apellido: #{@alumno.primer_apellido}"

text "Segundo apellido: #{@alumno.segundo_apellido}"

text "Nombre completo: #{@alumno.nombre_completo}"

text "genero: #{@alumno.genero}"

text "correo electronico: #{@alumno.email}"

text "Telefono: #{@alumno.tel}"

text "Direccion: #{@alumno.direccion}"

text "Municipio: #{@alumno.municipio}"

text "Celular: #{@alumno.celular}"

text "Tipo documento: #{@alumno.tipo_doc.nombre}"

text "fecha nacimiento: #{@alumno.fch_nacimiento}"

text "Estado civil: #{@alumno.estado_civil.nombre}"


pdf.move_down(10)
stroke_horizontal_rule
pdf.move_down(5)



pdf.move_down(10)
stroke_horizontal_rule
pdf.move_down(100)
formatted_text [

{ :text => "Estimado cliente si su registro de alumnos presenta comunicarse ", :color => "267095" },

 { :text => "555-555", :color => "0000FF"}]
 
 
stroke_axis
self.line_width = 5
fill_color "0FB3B3"
fill_rectangle [0, 100], 500, 100
fill_color "000000"
stroke_color "ffffff"
base_x = 100
[[0.5, 1], 0.5, [1, 0.5]].each do |args|
transparent(*args) do
fill_circle [base_x, 100], 50
stroke_rectangle [base_x - 20, 100], 40, 80
end
 base_x += 150
end


canvas do
 fill_color "#25D7C5"
 fill_circle [bounds.left, bounds.top], 30
 fill_circle [bounds.right, bounds.top], 30
 fill_circle [bounds.right, bounds.bottom], 30
 fill_circle [0, 0], 30
end