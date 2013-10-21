require 'spec_helper'

describe Vote do

  it { should     have_valid(:voted_up).when( true, false )}
  it { should_not have_valid(:voted_up).when(nil)}

  it { should belong_to(:voteable) }
  it { should belong_to(:user )}

end
