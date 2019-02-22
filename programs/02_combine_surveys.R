# Combine the various sites into the analysis file
# 

ws <- readRDS(file=file.path(dataloc,"mapping_ws_nums.Rds"))
ws <- as.vector(ws$ws)

for (x in 1:length(ws)) {
  
  tmp.outfile <- paste0("surveyQ_",ws[x])
  tmp.ws <- readRDS(file = file.path(dataloc,paste0(tmp.outfile,".Rds")))
  if ( x == 1 )  {
    # Read in the first list and set variable types
    surveys <- tmp.ws
  } else {
    # Add to master dataframe
    surveys <- bind_rows(surveys,tmp.ws)
    rm(tmp.ws)
  }
}

# rename the worksheet var, which identifies locations
surveys <- rename(surveys, location = worksheet)

# save the file
saveRDS(surveys,file=file.path(interwrk,"surveys.Rds"))
