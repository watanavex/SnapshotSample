
has_new_view = !git.added_files.grep(/ViewController.swift/).empty?
has_new_snapshot = !git.added_files.grep(/test_.+\.png/).empty?

if has_new_view && !has_new_snapshot
  warn("新しいViewControllerの実装お疲れ様でした❤️ あれ、スナップショットテストをお忘れでは？", sticky: true)
end
