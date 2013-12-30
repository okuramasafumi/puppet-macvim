require "spec_helper"

describe "macvim" do
  let(:facts) { default_test_facts }

  it do
    should contain_class("macvim")
    should contain_package("macvim").with({
      :ensure          => "latest",
      :install_options => ['--with-cscope', '--with-lua', '--override-system-vim']
    })
  end
end
