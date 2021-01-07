# hiera lookup "%{::newfact}.yaml"
Facter.add('newfact') do
  setcode do
    convertfact=Facter.value('oldfact')
    convertfact.to_i
    if convertfact.between?(100,900)
      newfact = '1100'
    end
    newfact.to_s
    #newfact
  end
end
