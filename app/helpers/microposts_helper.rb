module MicropostsHelper
  def cn_word_split text
    algor = RMMSeg::Algorithm.new(text)
    out = []
    while tok = algor.next_token
      out << to_utf8(tok.text)
    end
    out
  end

  def to_utf8 text
    String.new(text).force_encoding('utf-8')
  end
  
  def stop_words
    File.read('chinese_stop_words.txt').split.sort
  end
  
  def cn_filter_stop_words words
    (words - stop_words).reject do |word|
      stop_words.map do |sw|
        word.include?(sw)
      end.any?
    end
  end
  
  def cn_tokenize text
    out = text.downcase
    out = out.gsub(/<[^<>]+>/, ' ')
    out = out.gsub(/[0-9]+/, ' ')
    out = out.gsub(/(http|https):\/\/[^\s]*/, ' ')
  
    out = cn_word_split(out)
    out = cn_filter_stop_words(out)
    out.reject do |word|
      word.length <= 1
    end
  end
  
  def pre_token item
    tw = cn_tokenize(item.title)
    cw = cn_tokenize(item.content)
    tw * 10 + cw * 5
  end
  
  def caculate item
    corpus = []
    corpus = pre_token(item)
    data = TfIdf.new(corpus).tf_idf
  end
  
  def rm_stopwords contents
    stop_words.each do |stop_word|
      if contents.include? stop_word 
        contents = contents.delete(stop_word)
      end
    end
    return contents
  end
end
