<h1 align="center" style="border-bottom: none;"> Troopers HealthTracker Application</h1>
<h3 align="center">This is a Java + Spring Boot 2 Application intergrated with IBM Watson assistance base on Javascript demonstration app</h3>

<p align="center">
  <a href="http://travis-ci.org/watson-developer-cloud/assistant-simple">
    <img alt="Travis" src="https://travis-ci.org/watson-developer-cloud/assistant-simple.svg?branch=master">
  </a>
</p>
</p>

## Contents

1. [Short description](#short-description)
1. [Demo video](#demo-video)
1. [The architecture](#the-architecture)
1. [Long description](#long-description)
1. [Project roadmap](#project-roadmap)
1. [Getting started](#getting-started)
1. [Running the tests](#running-the-tests)
1. [Live demo](#live-demo)
1. [Built with](#built-with)
1. [Contributing](#contributing)
1. [Versioning](#versioning)
1. [Authors](#authors)
1. [License](#license)
1. [Acknowledgments](#acknowledgments)

## Short description

### What's the problem?

Every Pandemic brings a challenge in healthcare where connecting the doctors with patients with accurate and relevant info is very critical to cure the patients and stop the spread of pandemic.

### How can technology help?

When social distancing becomes the norm virtual connect becomes the solution. Connecting the Patients with the doctors in virtual chat rooms and providing the place where the patients stats can be shared is very critical.

### The idea

An application where patient will add all the information regarding his health (hourly/daily/weekly) and doctors will be able to see all the stats for the patients. Based on patient’s health doctor will add the prescription on the app and  If needed they can connect virtually to assess the patient. Even they can create the plan for patients like further test needed or in person visit needed. App will be integrated with IBM Watson chatbot which will connect users/patients with medical professionals based on the inputs provided.

## Demo video - To be modified

[![Watch the video](https://github.com/Code-and-Response/Liquid-Prep/blob/master/images/IBM-interview-video-image.png)](https://youtu.be/vOgCOoy_Bx0)

## The architecture

![HealthTracker App](Architechture.png)

1. The patients daily stats are collected and stored in DB through a device or by manual entry.
2. When a patient/admin user logins into an app, corresponding users stats are shown in dashboard.
3. Watson Assistant chatbot is available at admin/patient page to provide support for any queries.
4. Patient have an option to reach out to Doctor by providing the symptoms through an automated email.
5. Doctor suggests Patient by providing prescription based on symptoms, if it is urgent patient needs to admit in hospital.

## Long description

[More detail is available here](DESCRIPTION.md)

## Project roadmap

![Roadmap](roadmap.jpg)

## Getting started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

1. Sign up for an [IBM Cloud account](https://console.bluemix.net/registration/).
1. Create an instance of the Watson Assistant service and get your credentials:
    - Go to the [Watson Assistant](https://console.bluemix.net/catalog/services/conversation) page in the IBM Cloud Catalog.
    - Log in to your IBM Cloud account.
    - Click **Create**.
    - Click **Show** to view the service credentials.
    - Copy the `apikey` value, or copy the `username` and `password` values if your service instance doesn't provide an `apikey`.
    - Copy the `url` value.

## Configuring the application

1. In your IBM Cloud console, open the Watson Assistant service instance

2. Click the **Import workspace** icon in the Watson Assistant service tool. Specify the location of the workspace JSON file in your local copy of the app project:

    `<project_root>/training/bank_simple_workspace.json`

3. Select **Everything (Intents, Entities, and Dialog)** and then click **Import**. The car dashboard workspace is created.

4. Click the menu icon in the upper-right corner of the workspace tile, and then select **View details**.

5. Click the ![Copy](readme_images/copy_icon.png) icon to copy the workspace ID to the clipboard.

    ![Steps to get credentials](readme_images/assistant-simple.gif)

6. In the application folder, edit the resources/application.properties

    ```
    
    ```

7. Open the application.properties file and add the service credentials that you obtained in the previous step. The Watson SDK automaticaly locates the correct enviromental variables for either `username`, `password`, and `url` or the `apikey` and `url` credentials found in the *.env* file.

    Example *.env* file that configures the `apikey` and `url` for a Watson Assistant service instance hosted in the US East region:

    ```
    ibm.assistant.workspace.id=10c28603-f97a-45b0-b8e3-01512554d582
    ibm.assistant.username=17d5f37a-3022-40a4-9ad6-e456199adb75
    ibm.assistant.password=6lnxVZeaJTc5
    ```

    - If your service instance uses `username` and `password` credentials, add the `ASSISTANT_USERNAME` and `ASSISTANT_PASSWORD` variables to the *.env* file.

    Example *.env* file that configures the `username`, `password`, and `url` for a Watson Assistant service instance hosted in the US South region:

    ```
    
    ibm.assistant.username=17d5f37a-3022-40a4-9ad6-e456199adb75
    ibm.assistant.password=6lnxVZeaJTc5
    ```
    However, if your credentials contain an IAM API key, copy the `apikey` and `url` to the relevant fields.
    ```JSON
      {
        "apikey": "ca2905e6-7b5d-4408-9192-e4d54d83e604",
        "iam_apikey_description": "Auto generated apikey during resource-key ...",
        "iam_apikey_name": "auto-generated-apikey-62b71334-3ae3-4609-be26-846fa59ece42",
        "iam_role_crn": "crn:v1:bluemix:public:iam::::serviceRole:Manager",
        "iam_serviceid_crn": "crn:v1:bluemix:public:iam...",
        "url": "https://gateway-syd.watsonplatform.net/assistant/api"
      }
    ```
    ```
    ASSISTANT_IAM_APIKEY=ca2905e6-7b5d-4408-9192-e4d54d83e604
    ASSISTANT_IAM_URL=https://gateway-syd.watsonplatform.net/assistant/api
    ```

8. Add the `WORKSPACE_ID` to the previous properties

    ```
    ibm.assistant.workspace.id=10c28603-f97a-45b0-b8e3-01512554d582
    ```

## Running locally

1. Install the dependencies

    ```
    maven clean
    ```

1. Run the application

    ```
    maven install
    ```

1. View the application in a browser at `localhost:8080

## Running the tests

Explain how to run the automated tests for this system

## Live demo - to be modify

You can find a running system to test at [callforcode.mybluemix.net](http://callforcode.mybluemix.net/)

## Built with - to be modify

* [IBM Cloudant](https://cloud.ibm.com/catalog?search=cloudant#search_results) - The NoSQL database used
* [IBM Cloud Functions](https://cloud.ibm.com/catalog?search=cloud%20functions#search_results) - The compute platform for handing logic
* [IBM API Connect](https://cloud.ibm.com/catalog?search=api%20connect#search_results) - The web framework used
* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

See also the list of [contributors](https://github.com/Code-and-Response/Project-Sample/graphs/contributors) who participated in this project.

## License

This project is licensed under the Apache 2 License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* Based on [Billie Thompson's README template](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2).


