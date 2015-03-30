require_relative "download_file/version"
require 'open-uri'

class DownloadFile
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def download
    @tmpfile ||= begin
      tmpfile = Tempfile.new('download')
      open(url) do |read_file|
        tmpfile.syswrite(read_file.read)
      end
      tmpfile
    end
  end
end
