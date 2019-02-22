# ###########################
# CONFIG: define paths and filenames for later reference
# ###########################

# Change the basepath depending on your system

basepath <- rprojroot::find_rstudio_root_file()

# Main directories
dataloc <- file.path(basepath, "data","survey_data")
interwrk <- file.path(basepath, "data","interwrk")
Outputs <- file.path(basepath, "data","outputs")
TexBase <- file.path(basepath, "text")
TexIncludes <- file.path(basepath, "text","includes" )
programs <- file.path(basepath,"programs")

for ( dir in list(dataloc,interwrk,programs,TexIncludes,Outputs)){
	if (file.exists(dir)){
	} else {
	dir.create(file.path(dir),recursive = TRUE)
	}
}
