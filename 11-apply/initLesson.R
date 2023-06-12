# For compatibility with 2.2.21
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

# Path to installed lesson
.lessonpath <- file.path(.get_course_path(), "R-base-course-in-Italian",
                        "11-apply")
# Path to dataset
.datapath <- file.path(.lessonpath, "brigida.csv")
# Load dataset
brigida <- read.csv(.datapath, header=T)
# Path to dataset
.datapath <- file.path(.lessonpath, "pesi_regine.csv")
# Load dataset
pesi_regine <- read.csv(.datapath, header=T)
