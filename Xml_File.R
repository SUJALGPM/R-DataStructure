#*****************************************XML-FILE-R*****************************************

#Theory :-

# 1.like html, Xml is also a markup language which stands for extensible markup language.
# 2.It is Develop by www.
# 3.www define the syntax for encoding documents which both human and machine can read. This file contain markup tags.
# 4.Difference btwn html and xml, In html markup tags describe the structure of page and In xml markup tags describe the meaning of the data contained in the file.
# 5.To work with xml_file R provide some packages like XML OR methods.

#*****************************************Create-Xml-File*****************************************

# Note1: Create xml file into a textEditor/notepad. 
# Note2: Save the File with .xml extension and choosing the file types as all files(".")
# Note3: Basic syntax for creating xml file given below.

#    <Student>  # Root Node
#       <student1> # Sub Node
#       </student1>
  
#       <student2>
#       </student2>
  
#       <student3>
#       </student3>
#    </Student>


#*****************************************Read-Xml-File*****************************************

# 1.Read Xml_File using xmlParse() function....
result<-xmlParse(file = "Student.xml")

# 2.Read Xml_File in the form of list for that we have to convert extraxted xml file in list using xmlToList() functions.
data<-xmlToList(result)

# 3.Read xml file in the form of data.frame using xmlTODataFrame() function.
read<-xmlToDataFrame(result)


#*****************************************Write-Xml-File*****************************************

# 1.Create a new Xml Document..
doc<-newXMLDoc()

# 2.Create a new Xml root node...
root<-newXMLNode("Students",doc=doc)

# 3.Now add data sub_node vise....
student1<-newXMLNode("Student",attrs = c(ID=1,Name="sujal",dpt="computer",location="virar"),parent = root)
student2<-newXMLNode("Student",attrs = c(ID=2,Name="shreeya",dpt="mechanical",location="goregaon"),parent = root)
student3<-newXMLNode("Student",attrs = c(ID=3,Name="harsha",dpt="leather",location="mulund"),parent = root)
student4<-newXMLNode("Student",attrs = c(ID=4,Name="faisal",dpt="rubber",location="kharghar"),parent = root

# 4.Save the XML document to a file.
saveXML(file ="S:/PROGRAMS/R script Programs/College.xml",doc)
  

#*****************************************Operations*****************************************

# Note: After reading xml_file into list we can perform some operation on it.

# 1.Getting number of nodes present in xml_file.
root_node<-xmlRoot(result)
root_node[1]
root_node[4]
root_node[[2]][[2]]
root_node[[4]][[2]]
root_node[[1]][[1]]
root_node[[3]][[2]]

# 2.Display the size of root_node or we can say number of sub_node in xml document.
root_size<-xmlSize(root_node)

# 3.Now we also convert xml_file into dataframe to perform crude operation.
read$dpt[4]<-"Leather" #Update
read[4,3]  #Access
read[5,3]<-NA #Delete
a<-c("6","rudra","electrical","hostel")
up1<-rbind(read,a) #Add new row
b<-c(98,85,86,89,78,45)
cbind(up1,marks=b)
