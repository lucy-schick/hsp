preview_chapter('0100-intro.Rmd')

#################################################################################################
##go to the index.Rmd and change gitbook_on <- TRUE
#################################################################################################

rmarkdown::render_site(output_format = 'bookdown::gitbook',
                       encoding = 'UTF-8')


#################################################################################################
##go to the index.Rmd and change gitbook_on <- FALSE
#################################################################################################
##move the phase 1 appendix out of the main directory to a backup file or else the file is too big


# define the _bookfile_name from _bookdown.yml
filename_html <- 'OHSP'

{

  # file.rename('0600-appendix.Rmd', 'hold/0600-appendix.Rmd')

  ##   then make our printable pdf
  rmarkdown::render_site(output_format = 'pagedown::html_paged',
                         encoding = 'UTF-8')

  #move the phase 1 appendix back to main directory
  # file.rename('hold/0600-appendix.Rmd', '0600-appendix.Rmd')

  # print to pdf
  pagedown::chrome_print(
    paste0(filename_html, '.html'),
    output = paste0('docs/', filename_html, '.pdf'),
    timeout = 180
  )

  # # reduce the size
  # tools::compactPDF(paste0(getwd(), "/docs/", filename_html, ".pdf"),
  #                   gs_quality = 'screen',
  #                   ##this was on the windows machine
  #                   # gs_cmd = "C:/Program Files/gs/gs9.56.1/bin/gswin64.exe"
  #                   gs_cmd = "opt/homebrew/bin/gs"
  # )

  # get rid of the html as its too big and not needed
  file.remove(paste0(filename_html, '.html'))

}
