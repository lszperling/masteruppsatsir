##masteruppsatsir

This repository contains data and scripts related to a Master Thesis in International Relations related to the Falkland/Malvinas dispute. 
The scripts process the data and create a graph to show statistics related to public voting records from different resolutions of the general assembly of the UN. 

##Raw data
Raw data was extracted manually from the public records of the UN. 

##How does it work

###Pre processing
The raw data es process by a java program (to be uploaded) which counts the votes of every resolution un the "raw data" folder and writes the result in the "stats" folder.
At the same time, countries that were not processed because were not relevant for the study are listed in the "uprocessed" folder for every resolution.

###Generating the graph
In order to merge the statistics of every resolution the script "plotGenerator.R" should be run from the main directory of the project.
The script outputs a file called "finalStats.csv" and the graph in a file called "statsPlot.png". 