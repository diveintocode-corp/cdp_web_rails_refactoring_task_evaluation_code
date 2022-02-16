class MyFormatter
  RSpec::Core::Formatters.register self, :example_failed, :start, :stop
  def initialize(output)
    @output = output
    @pass_or_fail = true
  end

  def start(notification)
    @output << "---\ntitle: Feedback on the assignment\n---\n"
  end

  def stop(notification)
    if @pass_or_fail
      @output << "✅ The result of the automated assessment is a pass. If you have completed all the refactorings presented in the assignment requirements, please submit your assignment from the DIVER assignment submission screen."
    else
      @output << "❌ The result of the automated evaluation is failing. Please fix your code to pass all tests locally."
    end
  end

  def example_failed(notification)
    if @pass_or_fail == true
      @pass_or_fail = false
    end
  end
end
