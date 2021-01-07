# hiera lookup "%{::newfact}.yaml"
Facter.add('newfact') do
  setcode do
    oldfact=Facter.value('oldfact')
    oldfact.to_i
    if oldfact.between?(100,900)
      newfact = '1100'
    end
    newfact.to_s
    #newfact
  end
end
