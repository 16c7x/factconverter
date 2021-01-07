# modulename/lib/facter/newfact.rb
# hiera lookup "%{::newfact}.yaml"
Facter.add('newfact') do
  setcode do
    convertfact=Facter.value('oldfact')
    convertfact.to_i
    if convertfact.between?(100,900)
      newfact = '1100'
    else
      newfact = '2000'
    end
    newfact.to_s
  end
end
