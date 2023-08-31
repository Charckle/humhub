### Where we are
Its solution uses the image provided by mriedmann, version 1.13.2. Its a solution that combines php and nginx into a single image. The other option is to have them in different containers. Due to the complexity and the low amount of people using it, I decided to go with the combined.

Disable autoinstall and debugging, when moved into production. Autoinstall will do nothing, but, its good practice.

dditional configuration can be found on the [docker page](https://hub.docker.com/r/mriedmann/humhub)
