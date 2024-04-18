class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? githubLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.githubLink,
    this.webLink,
  });
}

// ###############
// PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/1.png',
    title: 'StudyBox',
    subtitle:
        'This is a comprehensive English learning app for practicing and competing with each other.',
    githubLink:
        'https://github.com/Yanai99/studyBox',
  ),
  ProjectUtils(
    image: 'assets/projects/02.png',
    title: 'html Gallery',
    subtitle:
        'This is a dictionary application for English learners to easily look up word definitions.',
    githubLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.eduza_eng_dictionary',
  ),
  ProjectUtils(
      image: 'assets/projects/03.png',
      title: 'AP Optimal - work in progress',
      subtitle:
          'This is a word memorising app to save and play your own words as quizes',
      githubLink:
          'https://play.google.com/store/apps/details?id=com.shohruhak.eng_pocket_dictionary',
  ),
];

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/w01.png',
    title: 'English Brain Craft',
    subtitle:
        'This is an English learning app for students to learn English through various methods.',
    githubLink:
        'https://play.google.com/store/apps/details?id=kr.co.evolcano.donotstudy',
  ),
  ProjectUtils(
    image: 'assets/projects/w02.png',
    title: 'Online Shop Web App',
    subtitle:
        'This is a responsive online shop web application for car engine oil.',
    webLink: 'https://www.elo.best',
  ),
  ProjectUtils(
    image: 'assets/projects/w03.jpeg',
    title: 'Advertisement Management System',
    subtitle:
        'This is an Advertisement Management System to buy, sell, and manage advertisement.',
    webLink: 'https://www.externally.unavailable.project',
  ),
];
