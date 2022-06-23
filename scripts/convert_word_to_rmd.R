# convert from docx to md using pandoc

# in terminal

C:\pathToFile> pandoc NewGraph_OHSP_20220724.docx -o NewGraph_OHSP_20220724.md

# put the images in a file

  pandoc NewGraph_OHSP_20220724.docx -o NewGraph_OHSP_20220724.md --extract-media=../fig/

# it put them in a file inside fig called media - some weird tweaks on some though.

 # convert md to rmd

    doc <- ''
r <- readLines(doc)
r <- readLines('data/NewGraph_OHSP_20220724.md')

  cat('---
title: "Untitled"
output: html_document
---
', file='doc.Rmd')  ## basic YAML header, may be customized
  for (i in seq(r)) {cat(r[i], '\n', file='doc.Rmd', append=TRUE)}

# voila
