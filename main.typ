#import "resume.typ": *

#let name = "Avishek Sen"
#let phone = "+91-858-492-9367"
#let email = "avishek.sen.101@gmail.com"
#let website = "x0rzavi.github.io/portfolio"
#let github = "github.com/x0rzavi"
#let linkedin = "linkedin.com/in/sen-avishek"
#let info-pos = left
#let image-path = "image.jpg"
#let font = "New Computer Modern"
#let font-size = 10pt
#let accent = rgb("#023e7d")

#show: resume.with(
  name: name,
  phone: phone,
  email: email,
  website: website,
  github: github,
  linkedin: linkedin,
  info-pos: info-pos,
  image-path: image-path,
  font: font,
  font-size: font-size,
  accent: accent,
)

== Education
#education(
  institution: "Netaji Subhash Engineering College",
  location: "Garia, West Bengal",
  degree: "Bachelor of Technology in Computer Science & Engineering, CGPA: 8.54",
  completion-date: "Expected June 2026",
)
#education(
  institution: "Sudhir Memorial Institute",
  location: "Madhyamgram, West Bengal",
  degree: "All India Senior School Certificate Examination (CBSE)",
  completion-date: "Jul 2021",
)
#education(
  institution: "Sudhir Memorial Institute",
  location: "Madhyamgram, West Bengal",
  degree: "All India Secondary School Examination (CBSE)",
  completion-date: "May 2019",
)

== Projects
#project(
  name: "Celeris",
  techstack: "C++, CMake, ZeroMQ, FlatBuffers, GoogleTest",
  timeline: format-date("Jul 2025", "Present"),
  url: "https://github.com/x0rzavi/celeris",
  description: (
    "Ongoing project to engineer a lightweight C++ productivity launcher application",
    "Achieved sub-millisecond (<10ms) launch and command processing times",
    "Architected a high-performance plugin system using Google’s FlatBuffers for zero-copy IPC, with ZeroMQ",
    "Established a robust, modern C++ development workflow utilizing unit testing and memory sanitization",
  ),
)
#project(
  name: "GitHub ReadMe Terminal",
  techstack: "Python, GitHub GraphQL API, FFmpeg",
  timeline: format-date("Nov 2023", "Present"),
  url: "https://github.com/x0rzavi/github-readme-terminal",
  description: (
    "Developed a Python application that generates terminal-themed GIFs",
    "Aimed to enhance project documentation aesthetics and user engagement on GitHub",
    "Implemented GitHub GraphQL API to get data about users and repositories",
    "Automated generation of 100+ GIFs monthly, reducing manual documentation effort by 80%",
    "Optimized GIF file size by 40% using FFmpeg pipelines",
  ),
)
#project(
  name: "Portfolio",
  techstack: "Responsive Design, HTML5, CSS, JavaScript",
  timeline: format-date("Aug 2025", "Present"),
  url: "https://github.com/x0rzavi/portfolio",
  description: (
    "Developed a responsive portfolio site with vanilla HTML5, CSS3, JS, showcasing core web fundamentals",
    "Applied advanced CSS, including mask-image, to dynamically color 15+ SVG icons",
    "Improved user experience with interactive elements using the Intersection Observer API",
  ),
)

== Achievements
#achievement(
  name: "IBM’s Master the Mainframe 2019 - Regional (India) Winner",
  date: "Mar 2020",
  url: "https://techchannel.com/master-the-mainframe/meet-the-2019-master-the-mainframe-winners/",
  description: (
    "One of the top 12 among 25516 participants",
    "Applied enterprise computing technologies like COBOL, REXX, JCL",
    "Designed an intuitive interface to orchestrate tasks on an IBM z14 Mainframe",
  ),
)
#achievement(
  name: "IBM’s Master the Mainframe 2020 - Regional (India) Winner",
  date: "Mar 2021",
  url: "https://community.ibm.com/community/user/ibmz-and-linuxone/blogs/meredith-stowell1/2021/03/31/announcing-the-2020-master-the-mainframe-winners",
  description: (
    "A repeat winner from India & Southeast Asia",
    "Solved a real-world challenge using tools like Python, Z Open Automation Utilities & ZOWE",
  ),
)

== Skills
#skill(
  category: "Languages",
  items: (
    "C",
    "C++",
    "Python",
    "HTML5",
    "CSS3",
    "JavaScript",
    "Bash",
    "Zsh",
    "Fish",
  ),
)
#skill(
  category: "Frameworks",
  items: (
    "GoogleTest",
    "Django",
    "Flask",
  ),
)
#skill(
  category: "Developer Tools",
  items: (
    "Git",
    "Linux",
    "Docker",
    "Podman",
    "CMake",
    "Google Cloud Platform",
    "GitHub Actions",
  ),
)
#skill(
  category: "Libraries",
  items: (
    "ZeroMQ",
    "FlatBuffers",
    "FTXUI",
    "Pillow (PIL Fork)",
    "SDL3",
  ),
)

