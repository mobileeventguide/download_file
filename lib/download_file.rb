# frozen_string_literal: true

require_relative 'download_file/version'
require 'open-uri'

class DownloadFile
  attr_reader :url, :headers

  def initialize(url, headers = {})
    @url = url
    @headers = headers
  end

  def download
    @tmpfile ||= begin
      tmpfile = Tempfile.new('download')
      open(url, headers) do |read_file|
        tmpfile.syswrite(read_file.read)
      end
      tmpfile
    end
  end
end
