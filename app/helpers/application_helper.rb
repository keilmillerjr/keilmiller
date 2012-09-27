module ApplicationHelper
	include FoundationRailsHelper::FlashHelper
	
	# Return active string if current page path is passed
	def active_page(path)
  	"active" if current_page?(path)
	end

	# Helper for translation paths when not available to lazy load
	def translate_path
		controller.controller_name + '.' + controller.action_name
	end

	# Helper for application title
	def title
		t(translate_path + '.title', :default => '').present? ? t(translate_path + '.title') + ' &middot; ' + t('brand', :default => 'Untitled') : t('brand', :default => 'Untitled')
	end
end
