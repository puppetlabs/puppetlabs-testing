require 'spec_helper_acceptance'

mdlj_file = '/etc/mdlj'

issue_file = '/etc/issue'

issue_net_file = '/etc/issue.net'

template_expected_content = 'Test Template for Rspec'

pp_static_content = <<-PUPPETCODE
    class { mdlj:
      content => "Hello world!\n",
    }
PUPPETCODE

pp_static_template = <<-PUPPETCODE
    class { mdlj:
      template => "mdlj/spec.epp",
    }
PUPPETCODE

pp_static_content_issue = <<-PUPPETCODE
    class { mdlj:
      issue_content => "Hello world!\n",
      content       => "Hello world!\n",
    }
PUPPETCODE

pp_static_template_issue = <<-PUPPETCODE
    class { mdlj:
      issue_template => "mdlj/spec.epp",
      content        => "Hello world!\n",
    }
PUPPETCODE

pp_static_content_issue_net = <<-PUPPETCODE
    class { mdlj:
      issue_net_content => "Hello world!\n",
      content           => "Hello world!\n",
    }
PUPPETCODE

pp_static_template_issue_net = <<-PUPPETCODE
    class { mdlj:
      issue_net_template => "mdlj/spec.epp",
      content            => "Hello world!\n",
    }
PUPPETCODE

pp_debian_dynamic = <<-PUPPETCODE
    class { mdlj:
      dynamic_mdlj => false,
      content      => "Hello world!\n",
    }
PUPPETCODE

# @summary: Helper function to run common functionality of mdlj acceptance tests.
#           Applies the manifest twice, if not windows checks for file against expected contents.
#           If a Debian dynamic test bool is given as true, executes a test for that platform.
# @param [string]  pp:                  Class mdlj definition to be tested
# @param [string]  expected_contain:    Expected contents of the mdlj file to be compared
# @param [string]  filename:            mdlj file to be tested
def test_mdlj(pp, expected_contain, filename)
  idempotent_apply(pp)

  return unless os[:family] != 'windows'
  expect(file(filename)).to be_file
  expect(file(filename)).to contain expected_contain
end

describe 'Message of the day' do
  context 'when static message from content' do
    it do
      test_mdlj(pp_static_content, "Hello world!\n", mdlj_file)
    end
  end

  context 'when static message from template' do
    it do
      test_mdlj(pp_static_template, template_expected_content, mdlj_file)
    end
  end

  context 'when static message from content in /etc/issue' do
    it do
      test_mdlj(pp_static_content_issue, "Hello world!\n", issue_file)
    end
  end

  context 'when static message from template in /etc/issue' do
    it do
      test_mdlj(pp_static_template_issue, template_expected_content, issue_file)
    end
  end

  context 'when static message from content in /etc/issue.net' do
    it do
      test_mdlj(pp_static_content_issue_net, "Hello world!\n", issue_net_file)
    end
  end

  context 'when static message from template in /etc/issue.net' do
    it do
      test_mdlj(pp_static_template_issue_net, template_expected_content, issue_net_file)
    end
  end

  context 'when disable dynamic mdlj settings on Debian', if: os[:family] == 'debian' do
    it do
      test_mdlj(pp_debian_dynamic, "Hello world!\n", mdlj_file)
    end
    describe file('/etc/pam.d/sshd') do
      its(:content) { is_expected.not_to match %r{session    optional     pam_mdlj.so  mdlj=/run/mdlj.dynamic} }
    end
  end
end
