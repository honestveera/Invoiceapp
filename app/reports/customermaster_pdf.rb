class CustomermasterPdf < Prawn::Document
    def initialize(customermaster)
          super()
          @customermaster=customermaster
          # Assign the path to your file name first to a local variable.
          logopath = "#{Rails.root}/public/11.jpg"
          # Displays the image in your PDF. Dimensions are optional.
          image logopath, :width => 150, :height => 50

          move_down 70

          # Add the font style and size
          font "Helvetica"
          font_size 18
          text_box " # #{@customermaster.id}", :align => :right

          font_size 22
          text "Thank you for your order, #{ @customermaster.customername }.", :align => :center
          move_down 20


          customermasterinfo = [["customernamee", "#{ @customermaster.customername }"], ["customerAddress", "#{ @customermaster.customeraddress }"],["customerFax", "#{ @customermaster.customerfax }"],["customerphone", "#{ @customermaster.customerphone }"],["customeremail", "#{ @customermaster.customeremail }"],
             ["customertin", "#{ @customermaster.customertin }"]]

          move_down 30

          table(customermasterinfo) do |table|
            table.rows(1..3).width = 72
          end
    end

end
