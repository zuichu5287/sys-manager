require "fileutils"
require "tempfile"

class File
	def File.open_salely(path)
		result,tmp_path = nil , nil
		Tempfile.open("#{0}-#{path.hash}") do |f|
			result = yield f
			tmp_path = path
		end
		FileUtils.move(temp_path,path)
		result
	end
end
