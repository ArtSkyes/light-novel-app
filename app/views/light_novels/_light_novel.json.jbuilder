json.extract! light_novel, :id, :title, :author, :description, :release_date, :price, :created_at,
              :updated_at
json.url light_novel_url(light_novel, format: :json)
