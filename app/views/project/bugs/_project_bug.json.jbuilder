json.extract! project_bug, :id, :title, :bug_type, :status, :deadline, :description, :created_at, :updated_at
json.url project_bug_url(project_bug, format: :json)