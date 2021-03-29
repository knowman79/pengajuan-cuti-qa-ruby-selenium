Run Testing
1. Run salah satu feature: `cucumber features/namaFile.feature`
2. Run semua feature: `cucumber features`
3. Run salah satu scenario: `cucumber -t @anotasiscrenario`
4. Run scenario sekaligus membuat report:
        a. `cucumber -f pretty --expand -f json -o report.json`
        b. `ruby report_builder.rb`
5. Summary testing ada di dalam folder Report
