# -*- encoding: utf-8 -*-
module TfIdf
  #
  #バージョンクラス
  #
  class Version
    #tfidf_jaのRubyGemsバージョンを出力する
    def self.tfidf_ja
      version_file = File.dirname(__FILE__) + '/../../VERSION'
      version = ""
      open(version_file) { |tfidf_ja_version|
        version = tfidf_ja_version.gets
      }
      return version
    end
    
    #Rubyのバージョンを取得する
    def self.ruby
      return RUBY_VERSION.slice(0, 3)
    end
  end
end
