class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? githubLink;
  final String? webLink;
  final String? youtubeLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.githubLink,
    this.webLink,
    this.youtubeLink,
  });
}

// ###############
// PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/1.png',
    title: 'StudyBox',
    subtitle:
        'With the power of arduino and arts & crafts, I created a box that locks your phone while you study.',
    githubLink:
        'https://github.com/Yanai99/studyBox',
    youtubeLink:
        'https://www.youtube.com/watch?v=GkbGGOS60vw&ab_channel=YanaiFaran',
  ),
  ProjectUtils(
    image: 'assets/projects/02.png',
    title: 'html Gallery',
    subtitle:
        'I created a gallery for my drawings using pure html and css.',
    githubLink:
        'https://github.com/Yanai99/Yanai-Gallery-V1?tab=readme-ov-file',
    webLink: 
        'https://yanai99.github.io/Yanai-Gallery-V1/',
  ),
  ProjectUtils(
      image: 'assets/projects/03.png',
      title: 'AP Optimal - work in progress',
      subtitle:
          'An alogotirthm to determine the optimal number and location of wifi router in a home',
      githubLink:
          'https://play.google.com/store/apps/details?id=com.shohruhak.eng_pocket_dictionary',
  ),
];

