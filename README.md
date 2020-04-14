# TrainerStuff1

## Intended public
For my valued students &amp; otherwise general curious public.

## Disclaimer
This is offered with no warranty. I don't pretend the code is perfect (or even near perfect), quite the contrary, this is mostly "quick & dirty" stuff, really.

But the goal is that it should be good enough for demo & learning purposes.

## LICENSING

Any piece of code I upload here will generally be my own and can be re-used, without Warranty, by anyone.

HOWEVER:

* I do use, naturally nowadays, many libraries (which I expect all to be free for use under the same licensing scheme here summarized). E.g. H. Wickam's TidyR... I will not comment on the reference of each library I import, as they are usually included through packages, for which anyone can check the documentation. Let me however acknowledge that none of the exercises proposed here would be possible without such libraries.
* I do read books, and I use them as inspiration, not however with direct intent of copying anything. IF I copy code from a book without adaptation, I will do my best to clearly and diligently point, usually through comments in the code, to the original source (book/author/URL...).
* If I use sample data for an exercise, I will do my best to ensure I only ever use publicly available sample data, and reference the source, or create my own sample data for the goals of the exercises.

## What you will find here
Mostly, some sample code in R, for demo of specific stuff, be-it: data visualization, anomaly detection through ML, etc.

## Helpful: The Lab
You might want to set up a lab to test out the code here.

**You can skip this section altogether if you have a working R + RStudio + Shiny environment**. *Make sure though that you check for the required libraries before you go into the code snippets*, as those required libraries (in some instances) are assumed to be available (and some have OS-level packages dependencies...).

I prepared a quick & dirty Docker container for just this purpose, that you can build from a Dockerfile. The idea is to be helpful in setting up a working lab, but there are PLENTY of resources out there to create a workable environment with R, RStudio IDE & al.
A good place to start probably would then be https://rstudio.com/products/rstudio/download/, and you can go for the Free version for the purpose of the labs. I chose to create a container because, well, it is "contained", and can be upgraded, redeployed, etc, all the while keeping my system clean... I will be posting the details on that Docker lab right here in this section.

**Notes:** Once again, there are some tweaks that I didn't implement (so expect some warnings and other such messages while building stuff) as this is just for demo purposes.

### Pre-requisites
As a pre-requisite though, you'll need to be able to "docker build" stuff. I suggest to use "docker desktop" for non-Linux users, and here are a few references, depending on your OS:

https://docs.docker.com/docker-for-windows/install/

https://docs.docker.com/docker-for-mac/

For Linux users, a relevant documentation pointer would be: https://docs.docker.com/engine/install/

On top of whatever requirements for compatibility with the Docker flavor of choice, you'll need about 0,5GB of spare RAM memory, and about 3GB of HD (2 for the container itself, and a bit more for code and sample data). Obviously, the more you manage to have of both, the better for the Lab setup...

### Setting up the lab
Pending documentation.

### Using The Lab
If you got to installing the R+Shiny+RStudio on your own, feel free to launch RStudio now.

If on the other hand you used the Dockerfile proposed above and all went well, you should be about ready to:
* Launch your container.
  * We will be mapping a local folder (in which you will be saving the demo code when needed)
  * limiting resources for the container (800MB RAM for example). 
  * We will not be keeping anything outside of that mapped folder, so the container changes will be discarded.
  * We will keep it interactive, in case we need to enter and deploy new packages, or otherwise edit contents (who knows)

 ```
   docker run --rm -it -m 800M -v /somelocalfolder/:/mnt/R/ -p 8787:8787 rserver1:1.0
 ```

* launch a browser and go to http://localhost:8787

Either way, you should now be seeing an RStudio IDE interface.
Time to move on :)
