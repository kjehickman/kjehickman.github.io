# for-loop to automate text for image parsing

setwd("/Users/kjehickman/Documents/Repos/KH_GH_clone_2/kjehickman.github.io")


jpg_parse <- function(file_names){
  for(h in 1:nrow(file_names)){
  image_file<-paste('\n![](', file_names[h],')\n',sep="") 
  cat('\n')
  cat(image_file)
  cat('\n')
  }
}

# parse jpeg composite for NN Ur work
print(jpg_parse("./pics/NN_long/"))


## Take 2

folder <- "./pics/NN_long/"      # path to folder that holds multiple .jpg files
file_list <- list.files(path=folder, pattern="*.jpg") # create list of all .jpg files in folder

# create text to paste for adding NN version long
for (i in 1:length(file_list)){
         #read image
         image_file<-paste('\n![](../pics/NN_long/', file_list[i],')\n',sep="") 
         cat('\n')
         cat(image_file)
         cat('\n')
         }
