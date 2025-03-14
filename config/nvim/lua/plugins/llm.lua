return {
  "huggingface/llm.nvim",
  opts = {
    model = "qwen2.5-coder:14b",
    backend = "ollama",
    url = "http://localhost:11434",
    enable_suggestions_on_startup = false,
  },
  cmd = { "LLMToggleAutoSuggest", "LLMSuggestion" },
}
