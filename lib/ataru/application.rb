class Application
  def self.run_test_for_file(file_name)

    #creating kramdown doc out of md file
    kramdown_doc = MarkdownLoader.load_file(file_name)
    #pulling an array of codespans/code samples from markdown document
    code_samples = Traverser.codespans(kramdown_doc)
    #wrapping code samples in minitest tests
    CodeSamples.add_test_cases(file_name, code_samples)
    require 'minitest/autorun'
  end
end

