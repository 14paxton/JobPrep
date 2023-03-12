 #!/bin/bash
pandoc -t markdown_strict -s BrandonPaxton.docx --wrap=none --reference-links -t markdown -o BPResume.md;