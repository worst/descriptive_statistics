module DescriptiveStatistics
  def frequency_distribution
    dist = {}
    self.each {|v| dist[v] ||= 0; dist[v] += 1}
    dist
  end
end