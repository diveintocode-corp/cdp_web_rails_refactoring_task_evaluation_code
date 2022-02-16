class MyFormatter
  RSpec::Core::Formatters.register self, :example_failed, :start, :stop
  def initialize(output)
    @output = output
    @pass_or_fail = true
  end

  def start(notification)
    @output << "---\ntitle: 課題評価のフィードバック\n---\n"
  end

  def stop(notification)
    if @pass_or_fail
      @output << "✅ 自動評価の結果は合格です。課題の要件で提示したすべてのリファクタリングが完了している場合は、DIVERの課題提出画面より課題を提出してください。"
    else
      @output << "❌ 自動評価の結果は不合格です。ローカルですべてのテストに合格するようコードを修正してください。"
    end
  end

  def example_failed(notification)
    if @pass_or_fail == true
      @pass_or_fail = false
    end
  end
end
