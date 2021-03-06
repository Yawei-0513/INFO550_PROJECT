FROM rocker/tidyverse

# install R packages like this
# put as close to top of script as possible to make best 
# use of caching and speed up builds
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('dplyr')"
RUN Rscript -e "install.packages('tidyr')"
RUN Rscript -e "install.packages('Rmisc')"
RUN Rscript -e "install.packages('plyr')"
RUN Rscript -e "install.packages('lattice')"

# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project
RUN mkdir /project/report

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/R/*.R


# make container entry point bash
CMD make -C project