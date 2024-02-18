import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

void main() {
  final myData = MyData(
      name: "Vijay Bharvad",
      companyname: "New Big pvt.ltd",
      position: "Software Engineer",
      email: "vbharvad@hawk.iit.edu",
      phone: "+1 571-604-2926",
      address: "2951 S King drive, Chicago, Illinois - 60616",
      schools: [
        SchoolData(
          name: "Knowledge High School",
          degree: "High School",
          result: "PR: 80.77",
        ),
        SchoolData(
          name: "Charotar University of Science and Technology",
          degree: "Bachelor' s Degree",
          result: "GPA: 3.5",
        ),
        SchoolData(
          name: "Illinois Tech",
          degree: "MCS",
          result: "GPA: 3",
        ),
      ],
      projects: [
        ProjectData(name: "Smart Homes", svgPath: "assets/images/samrthomes.svg"),
        ProjectData(name: "Homehub(Craftsman)", svgPath: "assets/images/homehub.svg"),
        ProjectData(name: "Sofa&Chill",svgPath: "assets/images/sofa and chill.svg"),
        ProjectData(name: "Sarjani Industries", svgPath: "assets/images/sarjani.svg"),
        ProjectData(name: "Marwiz", svgPath: "assets/images/Marwiz.svg"),
      ]);

  runApp(MyProfileApp(myData: myData));
}

class MyProfileApp extends StatelessWidget {
  final MyData myData;

  const MyProfileApp({required this.myData});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profile Page",style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromARGB(255, 111, 118, 118),
        ),
        body: ListView(
          children: <Widget>[
            MyInformationSection(myData: myData),
            ContactDetailsSection(myData: myData),
            EducationSection(
              myData: myData,
            ),
            ProjectsSection(myData: myData),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 146, 204, 222),
      ),
    );
  }
}

class MyInformationSection extends StatelessWidget {
  final MyData myData;

  const MyInformationSection({required this.myData});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 101, 140, 143),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage("assets/images/vijay.jpeg"),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "My Information",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2.0,
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.person, color: Colors.white),
                          title: Text("Name: ${myData.name}",
                              style: TextStyle(color: Colors.white)),
                        ),
                        ListTile(
                          leading: Icon(Icons. assignment_ind_sharp,
                              color: Colors.white),
                          title: Text("Position: ${myData.position}",
                              style: TextStyle(color: Colors.white)),
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.assignment, color: Colors.white),
                          title: Text("Company name: ${myData.companyname}",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactDetailsSection extends StatelessWidget {
  final MyData myData;

  const ContactDetailsSection({required this.myData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 90, 128, 134),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Contact Details",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
              const SizedBox(height: 10.0),
              ListTile(
                leading: Icon(Icons.email, color: Colors.white),
                title: Text("Email: ${myData.email}",
                    style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white),
                title: Text("Phone: ${myData.phone}",
                    style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text("Address: ${myData.address}",
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationSection extends StatelessWidget {
  final MyData myData;

  const EducationSection({required this.myData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 80, 125, 123),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "School History",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(
                    color: Colors.white,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  children: <TableRow>[
                    TableRow(
                      children: <TableCell>[
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "School Name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Degree",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Result",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    for (final school in myData.schools)
                      TableRow(
                        children: <Widget>[
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                school.name,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                school.degree,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                school.result ?? 'N/A',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  final MyData myData;
  const ProjectsSection({required this.myData});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 74, 124, 134),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Projects",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
              const SizedBox(height: 10.0),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: myData.projects.length,
                itemBuilder: (BuildContext context, int index) {
                  final project = myData.projects[index];
                  return Container(
                    width: 2.0,
                    height: 2.0,
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                            project.svgPath,
                            width: 36.0,
                            height: 36.0,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            project.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 90, 90, 90),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyData {
  final String name;
  final String companyname;
  final String position;
  final String email;
  final String phone;
  final String address;
  final List<SchoolData> schools;
  final List<ProjectData> projects;

  MyData({
    required this.name,
    required this.companyname,
    required this.position,
    required this.email,
    required this.phone,
    required this.address,
    required this.schools,
    required this.projects,
  });
}

class SchoolData {
  final String name;
  final String degree;
  String? result;

  SchoolData({
    required this.name,
    required this.degree,
    this.result,
  });
}

class ProjectData {
  final String name;
  final String svgPath;

  ProjectData({required this.name, required this.svgPath});
}
