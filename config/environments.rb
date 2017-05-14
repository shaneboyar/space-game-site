#The environment variable DATABASE_URL should be in the following format:
# => postgres://{user}:{password}@{host}:{port}/path
configure :production, :development do
  # db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/production')

  ActiveRecord::Base.establish_connection(
      :adapter => 'postgresql',
      :host     => 'localhost',
      :username => 'shaneboyar',
      :password => 'Humb3rthumb3rt',
      :database => 'development',
      :encoding => 'utf8'
  )
end