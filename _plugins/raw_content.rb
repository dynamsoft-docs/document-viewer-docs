# _plugins/raw_content.rb
module Jekyll
  class RawContentForCollections < Generator
    safe true
    priority :low

    def generate(site)
      site.collections.each do |label, collection|
        
        collection.docs.each do |doc|
          add_raw_content_to_document(site, doc)
        end
      end
      
      site.pages.each do |page|
        add_raw_content_to_document(site, page)
      end
      
    end

    private

    def add_raw_content_to_document(site, document)
      if document.respond_to?(:relative_path) && document.relative_path
        source_path = File.join(site.source, document.relative_path)
      elsif document.respond_to?(:path) && document.path
        source_path = document.path
      else
        return
      end
      
      if File.exist?(source_path)
        raw_file_content = File.read(source_path, encoding: 'UTF-8')
        content_without_front_matter = remove_front_matter(raw_file_content)
        document.data['raw_content'] = content_without_front_matter
      end
    end

    def remove_front_matter(content)
      if content =~ /\A---\s*\n.*?\n---\s*\n+/m
        result = content.sub(/\A---\s*\n.*?\n---\s*\n+/m, '')
        return result
      else
        return content
      end
    end
  end
end