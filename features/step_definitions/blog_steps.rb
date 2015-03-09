Given /the following articles exist/ do |contents_table|
	contents_table.hashes.each do |content|
    Article.create(:title => content[:title], :author => content[:author], :body => content[:body], :published => true)
    assert(Article.exists?(:title => content[:title]), "#{content[:title]} was expected but not found")
  end
end
