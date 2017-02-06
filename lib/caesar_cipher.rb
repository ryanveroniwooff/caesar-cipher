class String
  def rot13
    lowercase  = Array('a'..'z')
    uppercase  = Array('A'..'Z')
    cipher_txt = Hash[lowercase.zip(lowercase.rotate(13))].merge(Hash[uppercase.zip(uppercase.rotate(13))])
    self.chars.map { |c| cipher_txt.fetch(c,c) }.join unless self.nil?
  end
end
