  Teacher teacher1;
  Student student1;
  Student student2;

void setup() {
 
  teacher1 = new Teacher("Jesper", 30, false);
  student1 = new Student("Nicolai", 26, false, "Team B");
  student2 = new Student("Mathias", 23, false, "Team B");
  
  println("teacher1.name: " + teacher1.name);
  println("student1.name: " + student1.name + "\n" + student1.datamatikerTeam);
  println("student2.name: " + student2.name + "\n" + student2.datamatikerTeam);
  
  
}





//3.i Returning to the Datamatik tab add a setup() function and in this function, create a new object of the type Teacher and give it the name, age and gender of your teacher. 
//3.j Also in the setup() function of Datamatik, create two new objects of the type Student. The first one, with your own name, age and gender. The second one with the name, age and gender of the student sitting next to you. 

//3.k in the setup() function print the name of the teacher
//3.l in the setup() function print the names of both students and which teams they are from. */
