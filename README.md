Description of project
For my project, I did RNA-Seq normalization by using different methods and compare their performance here. The data were obtained from Gene Expression Omnibus database repository.

Execute analysis in your own envrionment

To analyze the data you will need to install some R packages. The required packages can be installed by running 
```
make install
```

To execute the analysis, from the project folder you can run 
```
make report
```
This will create a file called Report.html output in your directory that contains the results.

If you need helpful information, from the project folder you can run
```
make help
```
Execute analysis in docker 

Before analysis, you need to pull the docker image using the  command:
```
docker pull 2421281/image .
```
or you could build the docker image locally by running command:
```
make build
```
If you want to get the final report, you will need to mount your local directory by using  command:
```
docker run -v /localpath/report:/project/report 2421281/image
```
Note: the "localpath" is the path where you saved the project directory.

Run make clean if you want to remove the report, figure, and cleaned data from the project directory and you will find a "report" folder which includes the report.html. 

