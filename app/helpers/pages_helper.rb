module PagesHelper
	# Return hash of completed courses from codeschool
	def codeschool_completed_courses
		url = 'http://www.codeschool.com/users/tuscanidream.json'
		
		begin
      response = json_api_pull(url)
      response['courses']['completed']
    rescue
      nil
    end
	end

	# Return hash of badges from team treehouse
	def treehouse_badges
		url = 'http://teamtreehouse.com/keilmiller.json'
		
		begin
      response = json_api_pull(url)
      response['badges']
    rescue
      nil
    end
	end
end
