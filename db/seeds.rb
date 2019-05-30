# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

Review.delete_all;
BountyTag.delete_all;
UserTag.delete_all;
Tag.delete_all;
Application.delete_all;
Bounty.delete_all;
Project.delete_all;
User.delete_all;


Tag.create(name: "ruby");
Tag.create(name: "python");
Tag.create(name: "backend");
Tag.create(name: "server");
Tag.create(name: "rails");
Tag.create(name: "node");
Tag.create(name: "javascript");
Tag.create(name: "java");
Tag.create(name: "styling");
Tag.create(name: "css");
Tag.create(name: "c++");
Tag.create(name: "django");
Tag.create(name: "go");
Tag.create(name: "react");
Tag.create(name: "angular");
Tag.create(name: "full stack");
Tag.create(name: "php");
Tag.create(name: "devops");
Tag.create(name: "android");
Tag.create(name: "scala");


project_manager1 = User.create(
  username: "project_manager1",
  description: "I manage projects for company1",
  email: "project_manager1@email.com",
  password_digest: "project_manager1",
  github_url: "project_manager1@github.com"
  );
project_manager2 = User.create(
  username: "project_manager2",
  description: "I manage projects for company2",
  email: "project_manager2@email.com",
  password_digest: "project_manager2",
  github_url: "project_manager2@github.com"
  );
project_manager3 = User.create(
  username: "project_manager3",
  description: "I manage projects for company3",
  email: "project_manager3@email.com",
  password_digest: "project_manager3",
  github_url: "project_manager3@github.com"
  );

project11 = Project.create(
  name: "project11",
  description: "a really neato project",
  progress: 75,
  github_url: "project11@github.com"
);

project_manager2.reviews << Review.create(
  rating: 4,
  message: "good",
  project: project11,
)

frontendTag = Tag.create(name: "frontend")

bounty111 = Bounty.create(
  title: "bounty111",
  description: "this a bounty",
  status: "open",
  amount: 600.00
);
bounty111.tags << frontendTag
bounty112 = Bounty.create(
  title: "bounty112",
  description: "this a bounty",
  status: "open",
  amount: 700.00
);

project11.bounties << bounty111;
project11.bounties << bounty112;

application1111 = Application.create(
  message: "first application",
  user: project_manager2,
  bounty: bounty111
)

project12 = Project.create(
  name: "project12",
  description: "a really neato project",
  progress: 50,
  github_url: "project12@github.com"
);
bounty121 = Bounty.create(
  title: "bounty121",
  description: "this a bounty",
  status: "open",
  amount: 400.00
);
bounty122 = Bounty.create(
  title: "bounty122",
  description: "this a bounty",
  status: "open",
  amount: 500.00
);
project12.bounties << bounty121;
project12.bounties << bounty122;

project13 = Project.create(
  name: "project13",
  description: "a really neato project",
  progress: 25,
  github_url: "project13@github.com"
);
bounty131 = Bounty.create(
  title: "bounty131",
  description: "this a bounty",
  status: "open",
  amount: 1000.00
);
bounty132 = Bounty.create(
  title: "bounty132",
  description: "this a bounty",
  status: "open",
  amount: 1700.00
);
project13.bounties << bounty131;
project13.bounties << bounty132;


project_manager1.projects << project11;
project_manager1.projects << project12;
project_manager1.projects << project13;

project21 = Project.create(
  name: "project21",
  description: "a really neato project",
  progress: 25,
  github_url: "project21@github.com"
);


bounty221 = Bounty.create(
  title: "bounty221",
  description: "this a bounty",
  status: "open",
  amount: 600.00
);
bounty222 = Bounty.create(
  title: "bounty222",
  description: "this a bounty",
  status: "open",
  amount: 700.00
);

project21.bounties << bounty221;
project21.bounties << bounty222;

project22 = Project.create(
  name: "project22",
  description: "a really neato project",
  progress: 75,
  github_url: "project22@github.com"
);
project23 = Project.create(
  name: "project23",
  description: "a really neato project",
  progress: 85,
  github_url: "project23@github.com"
);

project_manager2.projects << project21;
project_manager2.projects << project22;
project_manager2.projects << project23;

project31 = Project.create(
  name: "project31",
  description: "a really neato project",
  progress: 75,
  github_url: "project31@github.com"
);
project32 = Project.create(
  name: "project32",
  description: "a really neato project",
  progress: 90,
  github_url: "project32@github.com"
);
project33 = Project.create(
  name: "project33",
  description: "a really neato project",
  progress: 14,
  github_url: "project33@github.com"
);

project_manager3.projects << project31;
project_manager3.projects << project32;
project_manager3.projects << project33;
