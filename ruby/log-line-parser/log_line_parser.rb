class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    message = @line.match(/\s(.)+/)[0]
    message.strip.chomp
  end

  def log_level
    level = @line.match(/\[\w+\]:/)[0]
    level.downcase.gsub(/[\[\]:]/, '')
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
