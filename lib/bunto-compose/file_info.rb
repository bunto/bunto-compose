class Bunto::Compose::FileInfo
  attr_reader :params
  def initialize(params)
    @params = params
  end

  def file_name
    name = Bunto::Utils.slugify params.title
    "#{name}.#{params.type}"
  end

  def content
    front_matter = YAML.dump({
      'layout' => params.layout,
      'title' => params.title,
    })

    front_matter + "---\n"
  end
end
