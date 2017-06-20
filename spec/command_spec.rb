require 'TerraformDevKit/command'

RSpec.describe TerraformDevKit::Command do
  it 'returns command output' do
    result = TerraformDevKit::Command.run('printf "Line1\nLine2"')
    expect(result).to eq(%w[Line1 Line2])
  end

  it 'throws an exception if command fails' do
    expect { TerraformDevKit::Command.run('sh -c "exit 1"') }
      .to raise_error('Error running command sh -c "exit 1"')
  end
end