module Enumerable
  def ccdf
    freq_dist = self.frequency_distribution(self)
    sorted_dist = freq_dist.sort {|a, b| b[0].to_f <=> a[0].to_f}
    num_values = sorted_dist.size
    num_data_points = sorted_dist.map{|v| v[1]}.reduce(:+)

    ccdf = {}

    sorted_dist.reduce(0) do |m, v|
      m += v[1]
      # is the to_s necesasry?
      ccdf[v[0]] = m

      m
    end

    ret = {}
    ccdf.sort {|a, b| a[0].to_f <=> b[0].to_f}.each do |pair|
      ret[pair[0]] = pair[1] / num_data_points.to_f
    end

    ret
  end
end