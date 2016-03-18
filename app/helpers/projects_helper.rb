require 'gchart'

module ProjectsHelper
  def pie_chart_for_solutions(project)
    # TODO: optimize it by using scopes or any better option
    tasks = project.tasks
    new_projects = tasks.where(status: 1).count
    in_progress_projects = tasks.where(status: 2).count
    done_projects = tasks.where(status: 3).count

    data = [new_projects, in_progress_projects, done_projects]
    labels = ["New (#{new_projects})", "In Progress (#{in_progress_projects})", "Done (#{done_projects})"]

    Gchart.pie_3d(:data => data, :labels => labels, :size => '695x380',
             :theme => :thirty7signals)
  end
end
