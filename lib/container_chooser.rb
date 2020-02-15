def choose_container(containers)
  prefix_length = (ENV["DEV_TOOLS_PREFIX_LENGTH"] || 2).to_i

  words = Hash.new(0)

  word_list = containers.map do |container|
    container.split('_')[0...prefix_length].join('_')
  end

  counts = Hash.new(0)

  word_list.each do |name|
    counts[name] = word_list.count(name)
  end

  namespaces = counts.keys
  mapping    = {}

  output = containers.map do |container|
    name = if namespace = namespaces.detect { |ns| container.include?(ns) }
      container.gsub("#{namespace}_", "[#{namespace}] ")
    else
      container
    end

    mapping[name] = container
    name
  end
  result = `printf \"#{output.join("\\n")}\" | fzf-tmux`
  result = result.strip

  mapping[result]
end