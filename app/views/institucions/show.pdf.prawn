fill_color "030404"
stroke_color "058653"
pdf.text "Institucion #{@institucion.id}", :size => 30, :style => :bold, :mode => :stroke


move_down 60
text "Informacion basica de la Institucion: "
float do
 move_down 60
 bounding_box([0, cursor], :width => 200) do
 end
end

stroke_horizontal_rule 
self.line_width = 8
pad(20) {text "CODIGO: #{@institucion.cod}" }

stroke_horizontal_rule
pad(20) {text "NOMBRE: #{@institucion.nombre}" }

stroke_horizontal_rule
pad(20) {text "CORREO ELECTRONICO: #{@institucion.email}", :color => "050606" }

stroke_horizontal_rule
pad(20) {text "DIRECCION: #{@institucion.direccion}", :color => "050606" }

stroke_horizontal_rule
pad(20) {text "TELEFONO: #{@institucion.telefono}" }




pdf.move_down(10)
stroke_horizontal_rule
pdf.move_down(100)
formatted_text [

{ :text => "Estimado usaruario si respectivo documento prensent problemas en la descarga y le informenos a los telefonos ", :color => "226D72" },

 { :text => "555-555", :color => "023B55"}]




canvas do 
 fill_color "122F3F"
 fill_circle [bounds.left, bounds.top], 40
 fill_circle [bounds.right, bounds.top], 40
 fill_circle [bounds.right, bounds.bottom], 40
 fill_circle [0, 0], 30
end

stroke_axis
self.line_width = 5
fill_color "089478"
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
