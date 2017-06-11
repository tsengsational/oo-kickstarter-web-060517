require 'pry'
class Backer
  attr_accessor :name
  attr_reader :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    # binding.pry
    @backed_projects << project
    project.backers.include?(self) ? return : project.add_backer(self)
  end


end
