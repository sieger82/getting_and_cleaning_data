# Getting and cleaning data course project
Course project for the Getting and Cleaning coursera course

The files in this repository are intended to be used with the smartphone dataset from the course project website.

To create a tidy dataset using the script `run_analysis.R` from this repo, the dataset needs to be present in the current R working directory as 'getdata-projectfiles-UCI HAR Dataset.zip'.

The script will:
  1. Unzip the dataset
  2. Merge the training and test data into a single dataset
  3. Add readable variable names
  4. Convert the activity levels from numbers to readable factors
  5. Add the subject ID to each observation

The file `CodeBook.md` contains a detailed description of all variables.

When the script finishes, it writes the tidy dataset to disk as 'tidy_UCI_HAR_Dataset.txt'.
