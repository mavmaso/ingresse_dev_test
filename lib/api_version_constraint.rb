class ApiVersionConstraint
  def initialize(option)
    @version = option[:version]
    @default = option[:default]
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.ingressdev.v#{@version}")
  end
end
