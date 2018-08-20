# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: messages.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "io.cucumber.messages.Wrapper" do
    oneof :message do
      optional :source, :message, 1, "io.cucumber.messages.Source"
      optional :gherkinDocument, :message, 2, "io.cucumber.messages.GherkinDocument"
      optional :pickle, :message, 3, "io.cucumber.messages.Pickle"
      optional :attachment, :message, 4, "io.cucumber.messages.Attachment"
      optional :testCaseStarted, :message, 5, "io.cucumber.messages.TestCaseStarted"
      optional :testStepStarted, :message, 6, "io.cucumber.messages.TestStepStarted"
      optional :testStepFinished, :message, 7, "io.cucumber.messages.TestStepFinished"
      optional :testCaseFinished, :message, 8, "io.cucumber.messages.TestCaseFinished"
    end
  end
  add_message "io.cucumber.messages.SourceReference" do
    optional :uri, :string, 1
    optional :location, :message, 2, "io.cucumber.messages.Location"
  end
  add_message "io.cucumber.messages.Location" do
    optional :line, :uint32, 1
    optional :column, :uint32, 2
  end
  add_message "io.cucumber.messages.Attachment" do
    optional :source, :message, 1, "io.cucumber.messages.SourceReference"
    optional :data, :string, 2
    optional :media, :message, 3, "io.cucumber.messages.Media"
  end
  add_message "io.cucumber.messages.Media" do
    optional :encoding, :string, 1
    optional :content_type, :string, 2
  end
  add_message "io.cucumber.messages.Source" do
    optional :uri, :string, 1
    optional :data, :string, 2
    optional :media, :message, 3, "io.cucumber.messages.Media"
  end
  add_message "io.cucumber.messages.GherkinDocument" do
    optional :uri, :string, 1
    optional :feature, :message, 2, "io.cucumber.messages.Feature"
    repeated :comments, :message, 3, "io.cucumber.messages.Comment"
  end
  add_message "io.cucumber.messages.Feature" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :tags, :message, 2, "io.cucumber.messages.Tag"
    optional :language, :string, 3
    optional :keyword, :string, 4
    optional :name, :string, 5
    optional :description, :string, 6
    repeated :children, :message, 7, "io.cucumber.messages.FeatureChild"
  end
  add_message "io.cucumber.messages.FeatureChild" do
    oneof :value do
      optional :rule, :message, 1, "io.cucumber.messages.Rule"
      optional :background, :message, 2, "io.cucumber.messages.Background"
      optional :scenario, :message, 3, "io.cucumber.messages.Scenario"
    end
  end
  add_message "io.cucumber.messages.Rule" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :keyword, :string, 2
    optional :name, :string, 3
    optional :description, :string, 4
    repeated :children, :message, 5, "io.cucumber.messages.RuleChild"
  end
  add_message "io.cucumber.messages.RuleChild" do
    oneof :value do
      optional :background, :message, 1, "io.cucumber.messages.Background"
      optional :scenario, :message, 2, "io.cucumber.messages.Scenario"
    end
  end
  add_message "io.cucumber.messages.Background" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :keyword, :string, 2
    optional :name, :string, 3
    optional :description, :string, 4
    repeated :steps, :message, 5, "io.cucumber.messages.Step"
  end
  add_message "io.cucumber.messages.Scenario" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :tags, :message, 2, "io.cucumber.messages.Tag"
    optional :keyword, :string, 3
    optional :name, :string, 4
    optional :description, :string, 5
    repeated :steps, :message, 6, "io.cucumber.messages.Step"
    repeated :examples, :message, 7, "io.cucumber.messages.Examples"
  end
  add_message "io.cucumber.messages.Comment" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :text, :string, 2
  end
  add_message "io.cucumber.messages.DataTable" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :rows, :message, 2, "io.cucumber.messages.TableRow"
  end
  add_message "io.cucumber.messages.DocString" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :content_type, :string, 2
    optional :content, :string, 3
    optional :delimiter, :string, 4
  end
  add_message "io.cucumber.messages.Examples" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :tags, :message, 2, "io.cucumber.messages.Tag"
    optional :keyword, :string, 3
    optional :name, :string, 4
    optional :description, :string, 5
    optional :table_header, :message, 6, "io.cucumber.messages.TableRow"
    repeated :table_body, :message, 7, "io.cucumber.messages.TableRow"
  end
  add_message "io.cucumber.messages.Step" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :keyword, :string, 2
    optional :text, :string, 3
    oneof :argument do
      optional :doc_string, :message, 5, "io.cucumber.messages.DocString"
      optional :data_table, :message, 6, "io.cucumber.messages.DataTable"
    end
  end
  add_message "io.cucumber.messages.TableCell" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :value, :string, 2
  end
  add_message "io.cucumber.messages.TableRow" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    repeated :cells, :message, 2, "io.cucumber.messages.TableCell"
  end
  add_message "io.cucumber.messages.Tag" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :name, :string, 2
  end
  add_message "io.cucumber.messages.Pickle" do
    optional :id, :string, 1
    optional :uri, :string, 2
    optional :name, :string, 3
    optional :language, :string, 4
    repeated :steps, :message, 5, "io.cucumber.messages.PickleStep"
    repeated :tags, :message, 6, "io.cucumber.messages.PickleTag"
    repeated :locations, :message, 7, "io.cucumber.messages.Location"
  end
  add_message "io.cucumber.messages.PickleStep" do
    optional :text, :string, 1
    repeated :locations, :message, 2, "io.cucumber.messages.Location"
    oneof :argument do
      optional :doc_string, :message, 3, "io.cucumber.messages.PickleDocString"
      optional :data_table, :message, 4, "io.cucumber.messages.PickleTable"
    end
  end
  add_message "io.cucumber.messages.PickleDocString" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :contentType, :string, 2
    optional :content, :string, 3
  end
  add_message "io.cucumber.messages.PickleTable" do
    repeated :rows, :message, 1, "io.cucumber.messages.PickleTableRow"
  end
  add_message "io.cucumber.messages.PickleTableCell" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :value, :string, 2
  end
  add_message "io.cucumber.messages.PickleTableRow" do
    repeated :cells, :message, 1, "io.cucumber.messages.PickleTableCell"
  end
  add_message "io.cucumber.messages.PickleTag" do
    optional :location, :message, 1, "io.cucumber.messages.Location"
    optional :name, :string, 2
  end
  add_message "io.cucumber.messages.TestCaseStarted" do
    optional :pickleId, :string, 1
    optional :timestamp, :message, 2, "google.protobuf.Timestamp"
  end
  add_message "io.cucumber.messages.TestCaseFinished" do
    optional :pickleId, :string, 1
    optional :timestamp, :message, 2, "google.protobuf.Timestamp"
  end
  add_message "io.cucumber.messages.TestStepStarted" do
    optional :pickleId, :string, 1
    optional :index, :uint32, 2
    optional :timestamp, :message, 3, "google.protobuf.Timestamp"
  end
  add_message "io.cucumber.messages.TestStepFinished" do
    optional :pickleId, :string, 1
    optional :index, :uint32, 2
    optional :testResult, :message, 3, "io.cucumber.messages.TestResult"
    optional :timestamp, :message, 4, "google.protobuf.Timestamp"
  end
  add_message "io.cucumber.messages.TestResult" do
    optional :status, :enum, 1, "io.cucumber.messages.Status"
    optional :message, :string, 2
  end
  add_enum "io.cucumber.messages.Status" do
    value :AMBIGUOUS, 0
    value :FAILED, 1
    value :PASSED, 2
    value :PENDING, 3
    value :SKIPPED, 4
    value :UNDEFINED, 5
  end
end

module Cucumber
  module Messages
    Wrapper = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Wrapper").msgclass
    SourceReference = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.SourceReference").msgclass
    Location = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Location").msgclass
    Attachment = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Attachment").msgclass
    Media = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Media").msgclass
    Source = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Source").msgclass
    GherkinDocument = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.GherkinDocument").msgclass
    Feature = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Feature").msgclass
    FeatureChild = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.FeatureChild").msgclass
    Rule = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Rule").msgclass
    RuleChild = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.RuleChild").msgclass
    Background = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Background").msgclass
    Scenario = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Scenario").msgclass
    Comment = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Comment").msgclass
    DataTable = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.DataTable").msgclass
    DocString = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.DocString").msgclass
    Examples = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Examples").msgclass
    Step = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Step").msgclass
    TableCell = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TableCell").msgclass
    TableRow = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TableRow").msgclass
    Tag = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Tag").msgclass
    Pickle = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Pickle").msgclass
    PickleStep = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleStep").msgclass
    PickleDocString = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleDocString").msgclass
    PickleTable = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleTable").msgclass
    PickleTableCell = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleTableCell").msgclass
    PickleTableRow = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleTableRow").msgclass
    PickleTag = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.PickleTag").msgclass
    TestCaseStarted = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestCaseStarted").msgclass
    TestCaseFinished = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestCaseFinished").msgclass
    TestStepStarted = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestStepStarted").msgclass
    TestStepFinished = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestStepFinished").msgclass
    TestResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.TestResult").msgclass
    Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("io.cucumber.messages.Status").enummodule
  end
end
