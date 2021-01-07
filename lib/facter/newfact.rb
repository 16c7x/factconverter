# hiera lookup "%{::newfact}.yaml"
Facter.add('newfact') do
  setcode do
    oldfact=Facter.value('oldfact')
    #oldfact = '101'
    puts oldfact.to_i
    if oldfact.between?(100,900)
      newfact = '1100'
    end
    newfact
  end
end
