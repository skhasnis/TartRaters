class Tart < ApplicationRecord
	has_many :ratings

	has_attached_file :tart_img, styles: { tart_index: "250x350>", tart_show: "325x475>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :tart_img, content_type: /\Aimage\/.*\z/
end
