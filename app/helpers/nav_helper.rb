module NavHelper
	def new_project_link
		link_to 'New Project', new_prjct_path, class: 'btn-new'
	end

	def add_picture_link
		link_to 'New Picture', new_prjct_picture_path(@prjct), class: 'btn-new'
	end

	def edit_project_link
		link_to 'Edit Project', edit_prjct_path, class: 'btn-new'
	end

	def delete_project_link
		link_to 'Delete This', @prjct, method: :delete, class: 'btn-new', data: { confirm: 'Are You Sure?' }
	end
end