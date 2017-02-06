## Developer Cloud Sandbox - SatCen Change Detection using Copernicus Sentinel-1 data

TODO: add change detection high-level description

## Quick link
 
* [Getting Started](#getting-started)
* [Installation](#installation)
* [Submitting the workflow](#submit)
* [Community and Documentation](#community)
* [Authors](#authors)
* [Questions, bugs, and suggestions](#questions)
* [License](#license)

### <a name="getting-started"></a>Getting Started

To run this application you will need a Developer Cloud Sandbox, that can be either requested from from [Terradue's Portal](http://www.terradue.com/partners), provided user registration approval.

A Developer Cloud Sandbox provides Earth Sciences data access services, and helper tools for a user to implement, test and validate a scalable data processing application. It offers a dedicated virtual machine and a Cloud Computing environment.
The virtual machine runs in two different lifecycle modes: Sandbox mode and Cluster mode.
Used in Sandbox mode (single virtual machine), it supports cluster simulation and user assistance functions in building the distributed application.
Used in Cluster mode (a set of master and slave nodes), it supports the deployment and execution of the application with the power of distributed computing for data processing over large datasets (leveraging the Hadoop Streaming MapReduce technology).

### <a name="installation"></a>Installation

#### Using the development version

Log on a developer sandbox (with at least 16GB of RAM) and install the pre-requisites:

```bash
sudo yum install -y miniconda snap
export PATH=/opt/anaconda/bin:$PATH
sudo conda install gdal -c terradue
```

Then run these commands in a shell:

```bash
cd
git clone https://github.com/ec-everest/dcs-satcen-sentinel1-cd.git
cd dcs-satcen-sentinel1-cd
git checkout develop
mvn clean install
```

### <a name="submit"></a>Submitting the workflow

Run this command in a shell on the developer sandbox:

```bash
ciop-run
```

Or invoke the Web Processing Service via the Sandbox dashboard providing a master and a slave products' URL, e.g.:

* https://catalog.terradue.com/sentinel1/search?uid=S1A_IW_GRDH_1SDV_20160702T181046_20160702T181111_011973_01276C_42D6 (master)
* https://catalog.terradue.com/sentinel1/search?uid=S1A_IW_GRDH_1SDV_20160726T181047_20160726T181112_012323_0132DA_8A2E (slave)

### <a name="authors"></a>Authors

* Paulo Nunes - SatCen
* Fabrice Brito - Terradue

### <a name="questions"></a>Questions, bugs, and suggestions

Please file any bugs or questions as [issues](https://github.com/ec-everest/dcs-satcen-sentinel1-cd/issues/new) or send in a pull request.

### <a name="license"></a>License

TODO: define and add license here
