# This program downloads the data created by the replicators from the
# Google sheets noted in the config.R file
# and saves the csv/R files in the data/replications_data folder
# You may need to issue the gs_auth() function first
# gs_auth()

# -------------------------------------
# Extract Entry Questionnaire and Save
# -------------------------------------
gs_auth()

# Extract Google Sheet Information Object
surveyQ.gs <- gs_key(survey_KEY)

# Print worksheet names
gs_ws_ls(surveyQ.gs)


# Iterate over each of the multiple sheets
ws <- gs_ws_ls(surveyQ.gs)
for (x in 1:length(ws)) {

  # Extract list and tidy
	tmp.ws <- gs_read(surveyQ.gs,ws=x)
	tmp.ws$worksheet <- ws[x]
	tmp.outfile <- paste0("surveyQ_",ws[x])
	
	if (file.exists(file.path(dataloc,paste0(tmp.outfile,".Rds")))) {
	  print(paste0("File ",tmp.outfile," already present"))
	} else {
	  names(tmp.ws) <- sub("\\?","",names(tmp.ws))

	# Save
	  saveRDS(tmp.ws,file = file.path(dataloc,paste0(tmp.outfile,".Rds")))
	  write.csv(tmp.ws,file = file.path(dataloc,paste0(tmp.outfile,".csv")))

	# Pause so Google doesn't freak out
	  Sys.sleep(10)
	  rm(tmp.ws)
	}
}

# Export the worksheet names to be used in a later data cleaning step
ws <- as.data.frame(ws)
ws$date <- Sys.Date()

if (file.exists(file.path(dataloc,"mapping_ws_nums.Rds"))) {
  tmp.ws <- readRDS(file=file.path(dataloc,"mapping_ws_nums.Rds"))
  ws <- tmp.ws %>% left_join(ws,by=c("ws","date"))
}
saveRDS(ws,file=file.path(dataloc,"mapping_ws_nums.Rds"))

# -------------------------------------
# Miscellaneous stuff to be tidied
# -------------------------------------


