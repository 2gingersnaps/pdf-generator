module PdfGenerator
  class Bot
    def self.receipt(payment_details)
    # we initialize ActionController
    ac = ActionController::Base.new
    #for mailed pdfs use
    # ac = ActionController.new

    # then, we can pretty much copy everything like in the above render example.
    pdf = ac.render_to_string pdf: "file_name_of_your_choice",
               template: "articles/show.pdf.erb",
               locals: {:myvariable => variable}
    tempfile = Tempfile.new "anynamehere.pdf"
    tempfile.binmode
    tempfile.write pdf
    tempfile.close
    tempfile
    end
  end
end