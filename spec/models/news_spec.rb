require 'spec_helper'

describe News do
  before(:each) do 
    News.delete_all
  end

  describe "url" do 
    before(:each) do 
      @h =  {
        :title => "foo",
        :content => "hahaha",
        :url => "bar",
        :date => Date.today,
      }
    end

    it "should be valid" do 
      News.new(@h).valid?.should be_true
    end

    it "should not contain special characters" do 
      News.new(
        @h.merge({:url => 'ha!ha'})
      ).valid?.should be_false
    end

    it "should not contain special character '.'" do 
      News.new(
        @h.merge({:url => 'ha.com'})
      ).valid?.should be_false
    end

    it "should not be empty special characters" do 
      News.new(
        @h.merge({:url => ''})
      ).valid?.should be_false
    end
  end

end
