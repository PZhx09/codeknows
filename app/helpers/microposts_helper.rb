module MicropostsHelper
  def stop_words
    File.read('chinese_stop_words.txt').split.sort
  end
  
  def rm_stopwords contents
    stop_words.each do |stop_word|
      if contents.include? stop_word 
        contents = contents.delete(stop_word)
      end
    end
    return contents
  end
  
  def rm_symbol text
    out = text.downcase
    out = out.gsub(/<[^<>]+>/, ' ')
    out = out.gsub(/[0-9]+/, ' ')
    out = out.gsub(/(http|https):\/\/[^\s]*/, ' ')
    return out
  end
  
  def pre_content item
    title = rm_symbol item.title
    content = rm_symbol item.content
    contents = (title + ",") * 10 + "," + (content + ",") * 5
    contents = rm_stopwords contents
  end
  
  def extract_tags item
    keyword = JiebaRb::Keyword.new
    content = pre_content item
    keywords_weights = keyword.extract content, 3
    keywords = keywords_weights.map!{|word| word.first}.join(" | ")
    returun keywords
  end
end
