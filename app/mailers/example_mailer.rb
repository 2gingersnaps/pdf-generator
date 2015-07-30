def payment_details(details)
  attachments["anyfilenametoo.pdf"] = File.read(PdfGenerator::Bot.receipt(details).path)
  mail(subject: .....)
end