pdf.text "Venta ##{@assistance.id}", :size => 30, :style => :bold, :mode => :stroke

stroke_horizontal_rule

pdf.move_down(30)

  text "Estudiante: #{@assistance.alumno}"

  text "Profesor: #{@assistance.profesor}"

  text "Curso: #{@assistance.curso}"

  text "Grupo: #{@assistance.grupo}"

  text "Horario: #{@assistance.horario}"

  text "Fecha: #{@assistance.fch}"
  
  pdf.move_down(10)
stroke_horizontal_rule
pdf.move_down(5)



pdf.move_down(10)
stroke_horizontal_rule
pdf.move_down(100)
formatted_text [

{ :text => "Estimado cliente si su registro de alumnos presenta problemas comunicarse ", :color => "267095" },

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

