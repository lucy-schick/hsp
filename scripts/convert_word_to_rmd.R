# convert from docx to md using pandoc

# in terminal

# Open Microsoft Word: Open the Word document containing the table that you want to convert.
# Convert the Word document to RMD: Save the Word document as a plain text file (.txt) or an HTML file (.html)
# This step is necessary to ensure Pandoc can process the file correctly.

# Run the following command in the terminal to convert the Word document to md format

C:\pathToFile> pandoc NewGraph_OHSP_20220724.docx -f docx -t markdown -s -o NewGraph_OHSP_20220724.rmd


# put the images in a file

  pandoc NewGraph_OHSP_20220724.docx -o NewGraph_OHSP_20220724.md --extract-media=../fig/

# it put them in a file inside fig called media - some weird tweaks on some though.

 # convert md to rmd

r <- readLines('data/NewGraph_OHSP_20220724.md')

  cat('---
title: "Untitled"
output: html_document
---
', file='doc.Rmd')  ## basic YAML header, may be customized
  for (i in seq(r)) {cat(r[i], '\n', file='doc.Rmd', append=TRUE)}

# voila
