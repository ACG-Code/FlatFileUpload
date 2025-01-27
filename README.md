# IBM PA: Flat File Upload
This repository contains the necessary objects to upload a flat file into IBM Planning Analytics.  This utility is run from within Planning Analytics for Excel (PAfE) and will:
* Create CSV file from Excel file
* Upload CSV file to Planning Analytics server
* Run a Turbo Integrator process to load the data into a cube

## Installation

* Objects
  * Excel Objects
    * `Generic_Upload_VBA.txt`
    * `Generic_Upload_VBA.xlsm`
  * PA Objects
    * TI Processes:
      * `Cube_PriceCube_Load_From_File_Wrapper`
      * `Cube_PriceCube_Load_From_File`

* PA Version 11
  * Download the TI Processes and import them into your PA environment.
* PA Version 12
  * Use the Remote Repository functionality to import the TI Processes into your PA environment.
  * Repository URL: `git@github.com:ACG-Code/FlatFileUpload.git`
  * Branch: `v12`