module DescriptiveStatistics
  def z_score
    mean = self.mean
    sd = self.standard_deviation
    self.map { |sample| (sample - mean).to_f / sd }
  end
end