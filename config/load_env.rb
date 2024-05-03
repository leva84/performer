# frozen_string_literal: true

env_file_path = File.expand_path('../.env', __dir__)

if File.exist?(env_file_path)
  File.foreach(env_file_path) do |line|
    next unless line.include?('=')

    key, value = line.strip.split('=')
    ENV[key] = value
  end
else
  puts 'Environment variable (.env) file not found'
end
