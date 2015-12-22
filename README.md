# grid-analysis-client
The grid-analysis Client is used to actually run the grid-analysis Timepix particle counting software on GridPP.
This is required because the software is stored on CVMFS, so you need to set the appropriate environment variables for the software to recognise the libraries it depends on (lucid-utils).

Also included is a sample Job Definition Language (jdl) file for use with DIRAC. (IRISAnalysis.jdl) This will allow you to sumbit a Grid job for running the software with the data you wish to analyse.
You will need to change some settings in this file, such as the job name, and data location to suit your environment.
You may also want to make a copy of this file, and edit that instead of the main file, so you can 'git pull' in the future if any changes are made.

Some test ASCII XYC data is provided in the testdata/ directory if you wish to test with sample data first.
Please make sure any data you submit is in the ASCII X,Y,C format so grid-analysis can read it.

## Running the software
### Locally
Just run:
```shell
$ bash run.sh /cvmfs/researchinschools.egi.eu/software/grid-analysis/ testdata/
```
Replacing testdata with the location of the folder containing your test data.

### On the Grid

You'll need to run something similar to:
```shell
$ dirac-wms-job-submit IRISAnalysis.jdl
```
Make sure you've set up your proxy etc. and edited the file prior to running this command.
(For more information, see the GridPP UserGuide https://www.gridpp.ac.uk/userguide/dirac-create-ui/dirac-create-ui.html
  and the DIRAC Basic Tutorials https://github.com/DIRACGrid/DIRAC/wiki/JobManagement).
