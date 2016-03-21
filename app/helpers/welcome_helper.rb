require 'gchart'

module WelcomeHelper
  def pie_chart_for_solutions(project)
    new_projects = project.status(1)
    in_progress_projects = project.status(2)
    done_projects = project.status(3)

    data = [new_projects, in_progress_projects, done_projects]
    labels = ["New (#{new_projects})", "In Progress (#{in_progress_projects})", "Done (#{done_projects})"]

    Gchart.pie_3d(:data => data, :labels => labels, :size => '495x280',
             :theme => :thirty7signals)
  end
end
