# hiera lookup "%{::newfact}.yaml"
Facter.add('newfact') do
  setcode do
    oldfact=Facter.value('oldfact')
    if oldfact.between? (100, 900)
      newfact = '1100'
    end
    newfact
  end
end
