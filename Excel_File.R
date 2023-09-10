#*******************************Excel-File******************************

# Note: To work with excel file, R provide some lot of packages like xlsx,readxl,xlconnect,gdata,openxlsx,etc.
install.packages("readxl")
library("readxl")

# Note: To verify that packages is installed or not ? so we check through grepl() and any().
any(grepl("readxl",installed.packages()))

# Note: Create excel file like sheet1, sheet2 in workgroup and insert some data.


#*****************************************READ-EXCEL FILE*****************************************

#Step1 : To read that excel file set the dir which contain excel file.
#Step2 : Read the file after setting the dir using packages.
getwd()
setwd("S:/PROGRAMS/Excel_File")
a<-read_excel("Note.xlsx",sheet=1)
b<-read_excel("Note.xlsx",sheet=2)
is.data.frame(b)


#*****************************************WRITE-EXCEL FILE*****************************************

#Step1 : To write data.frame into excel file specifies the location.
#Step2 : Write the data using writexl() package that provide writexl() function.
data<-data.frame(id=c(1,2,3,4),name=c("anjali","aliza","aditi",'sneha'),dpt=c("e2","r3","n3","y4"))
write_xlsx(data,path = "S:/PROGRAMS/Excel_File/Note1.xlsx")


#*****************************************Work-Book and Work-sheet*****************************************

#Note : If you want to write data to a specific sheet by name, you can use the openxlsx package, which allows you to work with Excel files and specify the sheet by name. 
#Note : Workbook means Book / Worksheet means Page.

# 1.Create a new Workbook.
wb<-createWorkbook()

# 2.Add new sheet(page) in above Workbook.
addWorksheet(wb,"sheet1")

# 3.Now write data into above sheet1.
writeData(wb,sheet = "sheet1",x=data)

# 4.Save above created Workbook in specific file.
path="S:/PROGRAMS/New_File"
saveWorkbook(wb,path)

# 5.Close Workbook.
close(wb)


# Different process>>>Try to add existing file in that above work book...

# Specify the path of the existing workbook.
existing_file_path<-"S:/PROGRAMS/New_File"

# Specify the path of the Excel file you want to add
new_file_path<-"S:/PROGRAMS/Excel_File/Note.xlsx"

# Load the existing workbook.
exist_wb<-loadWorkbook(existing_file_path)

# Load the Excel file you want to add
new_wb<-loadWorkbook(new_file_path)

# Get the names of sheets in the new workbook.
new_sheet_name<-getSheetNames(new_wb)

# Iterate through each sheet in the new workbook and add it to the existing workbook.
for (sheet_name in new_sheet_names) {
  new_sheet <- readWorksheet(new_wb, sheet = sheet_name)
  addWorksheet(existing_wb, sheet_name)  # Add a new sheet with the same name
  writeData(existing_wb, sheet = sheet_name, x = new_sheet)
}

# Save the updated existing workbook
saveWorkbook(existing_wb, existing_file_path)

# Close both workbooks
close(existing_wb)
close(new_wb)
