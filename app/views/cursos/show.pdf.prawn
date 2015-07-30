pdf.text "Venta ##{@curso.id}", :size => 30, :style => :bold, :mode => :stroke

stroke_horizontal_rule

pdf.move_down(30) 

  text "Nombre: #{@curso.nombre}"

  text "Descripcion: #{@curso.descripcion}"

  text "Fecha de inicio: #{@curso.fch_ini}"

  text "Fecha Final: #{@curso.fch_fin}"


pdf.move_down(10)

stroke_horizontal_rule

pdf.move_down(5)

text "Total precio: #{@curso.total_pre}", :row_color => ["A32626","2664A3"], :aling => {30 => 

:rigth,2 => :left}

text "Total iva: #{@sale.total_iva}"

text "Total Pago: #{@sale.total_iva + @curso.total_pre}"

pdf.move_down(10)

stroke_horizontal_rule

pdf.move_down(100)

formatted_text [

{ :text => "Estimado cliente si su factura presenta un valor no correspondiente por favor 

informenos al ", :color => "DE150E" },

 { :text => "555-555", :color => "0000FF"}]