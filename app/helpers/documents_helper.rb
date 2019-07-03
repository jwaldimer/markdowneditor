module DocumentsHelper

	def document_old(date)
		((Time.zone.now - date) / 1.day).to_i
	end

	def markdown(text)
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                       no_intra_emphasis: true,
                                       fenced_code_blocks: true,
                                       disable_indented_code_blocks: true,
                                       autolink: true,
                                       tables: true,
                                       underline: true,
                                       highlight: true
                                      )
    return markdown.render(text).html_safe
  end

end
