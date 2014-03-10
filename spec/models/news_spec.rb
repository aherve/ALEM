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
      }
    end

    it "should be valid" do 
      News.new(@h).valid?.should be_true
    end

    it "should be validated" do 
      News.new(
        @h.merge({:url => 'ha!ha'})
      ).valid?.should be_false
      News.new(
        @h.merge({:url => ''})
      ).valid?.should be_true
    end
  end

end
