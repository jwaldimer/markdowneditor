module DocumentsHelper

	def document_old(date)
		((Time.zone.now - date) / 1.day).to_i
	end
end
