$:.unshift File.join(File.dirname(__FILE__), '../lib')
require 'csvr'

module Csvr
  describe Csvr do
    it 'view' do
      Csvr.should_receive(:render).with([["a", "b", "c", "d", nil], ["1", "2", "3", "4", "5"]])
      Csvr.view(File.join(File.dirname(__FILE__), 'test.csv'))
    end

    it 'render' do
      Csvr.render([[1, 2, 3], [4, 5, 6]]).should == 
'+---+---+---+
| 0 | 1 | 2 |
+---+---+---+
| 1 | 2 | 3 |
| 4 | 5 | 6 |
+---+---+---+
2 rows in set'
    end

    it 'normalize' do
      Csvr.normalize([[1, 2, 3], [1, 2, 3, 4]]).should == [[1, 2, 3, nil], [1, 2, 3, 4]]
    end
  end
end
