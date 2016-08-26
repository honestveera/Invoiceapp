
class SuppliermasterPdf < Prawn::Document
    def initialize(suppliermaster)
          super()
          @suppliermaster=suppliermaster
          # Assign the path to your file name first to a local variable.
          logopath = "#{Rails.root}/public/11.jpg"
          # Displays the image in your PDF. Dimensions are optional.
          image logopath, :width => 150, :height => 50

          move_down 70

          # Add the font style and size
          font "Helvetica"
          font_size 18
          text_box " # #{@suppliermaster.id}", :align => :right

          font_size 22
          text "Thank you for your order, #{ @suppliermaster.suppliername }.", :align => :center
          move_down 20


          suppliermasterinfo = [["suppliernamee", "#{ @suppliermaster.suppliername }"], ["SupplierAddress", "#{ @suppliermaster.supplieraddress }"],["SupplierFax", "#{ @suppliermaster.supplierfax }"],["supplierphone", "#{ @suppliermaster.supplierphone }"],["supplieremail", "#{ @suppliermaster.supplieremail }"],
             ["suppliertin", "#{ @suppliermaster.suppliertin }"]]

          move_down 30

          table(suppliermasterinfo) do |table|
            table.rows(1..3).width = 72
          end
    end

end
