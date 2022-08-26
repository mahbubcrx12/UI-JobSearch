class Job {
  String logoUrl;
  String company;
  String title;
  String location;
  List <String> req;
  Job(this.logoUrl,this.company,this.location,this.title,this.req);

  static List<Job> generatedList(){
    return [
      Job("assets/images/airbnb_logo.png", "Airnob Inc.", "417 Marine plaza Texas \n united States","Product Design",
          ["Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",
          ]),
      Job("assets/images/google_logo.png", "Google LLC", "417 Marine plaza Texas \n united States","Product Design",
          ["Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",
          ]),
      Job("assets/images/linkedin_logo.png", "LinkedIn", "417 Marine plaza Texas \n united States","Product Design",
          ["Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",

          ]),
      Job("assets/images/airbnb_logo.png", "Airnob Inc.", "417 Marine plaza Texas \n united States","Product Design",
          ["Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",
          ]),
      Job("assets/images/google_logo.png", "Google LLC", "417 Marine plaza Texas \n united States","product Design",
          ["Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",
          ]),
      Job("assets/images/google_logo.png", "Google LLC", "417 Marine plaza Texas \n united States","product Design",
          ["Creative with an eye shape and colors",
            "understand different material and production methods",
            "Creative with an eye shape and colors",
            "understand different material and production methods",

          ])

    ];
  }

}