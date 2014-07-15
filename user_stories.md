USER STORIES

Given I’m a new user
When I go to the home page I will see a prompt to sign-in
and there will be a link to sign-up and when I click that I will be redirected to a form
and I will fill in a screen name
and I will fill in my email
and I will fill in my password twice for confirmation.

Given I’m a new user
When I finish signing up and press submit
I will be directed to the main page where I will see different categories:
and i will see a category for weather
and I will see a category for posts
and I will see a category for instagrams
and I will see a category for articles


Given I’m a returning user
When I go to the home page I will see a prompt to sign-in
and i will fill in the form
and I will fill in my username
and I will fill in my password

Given I’m a returning user
when I click submit on the sign in form
I will be directed to the main page where I will see different categories:
and i will see a category for weather
and I will see a category for posts
and I will see a category for instagrams
and I will see a category for articles

Given I’m a signed in user
When I am on the home page and I look at the weather section
I will see the weather for today and the next 2 days.

Given I’m a signed in user
When I am on the home page and I look at the posts section
I will see posts listed by the date they were created.

Given I’m a signed in user
When I am on the home page and I look at the instagram section
I will see photos which when clicked on will link to the instagram photo page
(I would like to include the instagram authors name on the photo as well…)

Given I’m a signed in user
When I am on the home page and I look at the article section
I will see a list of article titles from various Boston news outlets
and when I click on the links it will take me to the full article and the source website.

Given I’m a signed in user
when I am on my home page
in addition to the 4 categories I will also see a button to add a post

Given I’m a signed in user
When I click on the button to add a post
I will be directed to a form
and I will fill in a title for my post
and I will fill in content for my post
and I will fill in a url, if I want to include it, in my post

Given I’m a signed in user
When I click the submit button on my add a post form
I will be directed back to the main page where I will see my post listed at the bottom of the posts category.

Given I’m a signed in user
When I am on my home page
in addition to the 4 categories and a button to add a post, I will also see a button to manage my posts.

Given I’m a signed in user
When I click the button to manage my posts
I will be directed to a page that lists my posts
and I will see buttons to edit or delete my posts.

Given I’m a signed in user
and I am on my manage my posts page and I click on the edit post button
I will be directed to a form page that shows my posts details
and I will be able to make my edits to the post and click submit-
when I click submit I will directed back to the main page.

Given I’m a signed in user
and I am on my manage my posts page and I click the delete button
my post will be deleted from my posts, as well as from the list in the posts category on the main page.

(I might add commentability to the posts if I have time)

MODELS AND DATA

USER
has_many :posts

t.integer :id,
t.string :email

POST
belongs_to :user

t.integer :id,
t.string :title,
t.string :url,
t.integer :user_id,
t.date :created_at


