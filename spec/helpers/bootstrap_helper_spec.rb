# encoding: UTF-8
require 'spec_helper'

describe BootstrapHelper do
  describe '.icon' do
    subject { helper.icon 'hammer' }
    specify { should == "<i class=\"icon-hammer icon\"></i> " }
  end

  describe '.flash_notice' do
    before(:each) do
      helper.flash['notice'] = 'test'
    end
    subject { helper.flash_notice 'notice', 'error' }
    specify { should == "<div class=\"alert alert-block alert-error fade in\"><button class=\"close\" data-dismiss=\"alert\" name=\"button\" type=\"button\">×</button><h4 class=\"alert-heading\">Notice</h4><p>test</p></div>" }
  end

  describe '.progress_bar' do
    subject { helper.progress_bar 20 }
    specify { should == "<div class=\"progress progress-success\"><div class=\"bar\" style=\"width: 20.00%\"></div></div>" }
  end
end