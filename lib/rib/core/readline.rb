
require 'rib'
require 'readline'

module Rib::Readline
  include Rib::Plugin
  Shell.use(self)

  def before_loop
    return super if Readline.disabled?
    @history = ::Readline::HISTORY
    super
  end

  def get_input
    return super if Readline.disabled?
    ::Readline.readline(prompt, true)
  end
end