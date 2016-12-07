class IpAddress
  def initialize(ip)
    @ip_address = ip
    @p_vals = @ip_address.split(/\[.+?\]/)
    @n_vals = @ip_address.scan(/\[.+?\]/)
  end

  def tls?
    abba = /(.)(?!\1)(.)\2\1/
    @p_vals.map { |v| v =~ abba }.compact.map do
      @n_vals.map { |n| !(n =~ abba) }.all?
    end.any?
  end

  def ssl?
    aba = /(.)(?!\1)(.)\1/
    babs = @p_vals.flat_map do |v|
      (0..v.length).flat_map do |i|
        m = aba.match(v[i..-1])
        m ? m[2] + m[1] + m[2] : nil
      end
    end.compact.uniq
    babs.flat_map do |p|
      @n_vals.map { |n| n =~ /#{p}/ }.any?
    end.any?
  end
end
