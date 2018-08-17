require './html_report.rb'
require './plain_text_report.rb'

report = HTMLReport.new
report.output_report

report = PlainTextReport.new
report.output_report
