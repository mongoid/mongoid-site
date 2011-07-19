class Deploy < Thor::Group
  desc "Deploy to heroku and push to github"
  
  def one                           
    puts '# Pushing to github'
    `git push`                 
  end                      
  
  def two
    puts '# Deploying to Heroku'
    `git push heroku`
  end
end