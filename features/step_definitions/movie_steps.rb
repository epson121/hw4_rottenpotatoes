Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
  @movie = Movie.all;
  if (@movie[2] == arg2)
    return true;
  return false;
  end
end

Then /^I should be on the (.+) page /i do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

Then /^I should be on the home page$/ do
 current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to('/movies')
  else
    assert_equal path_to('/movies'), current_path
  end
end


Given /^the following movies exist:$/ do |table|
  table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    @movie = Movie.create!(movie)
  end
end

