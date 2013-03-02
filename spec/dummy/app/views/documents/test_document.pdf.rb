meta page_size: "A4"

content do |data|
  helper_works
  text "Message: #{data.message}."
end
