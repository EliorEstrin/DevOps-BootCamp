# Minimal Lab Setup

This repository contains a Docker Compose file that creates a GitLab server,Jenkins container for CI/CD purposes and Artifactory.
Prerequisites

```
    Docker and Docker Compose must be installed on your machine.
```

## How to Use


Clone this repository: 
``` 
    git clone https://github.com/elior7557/minimal-ci-lab.git
```

Go to the directory where the repository was cloned:
```
     cd minimal-lab-setup
```

 Build and start the containers: 
 ```
    docker-compose up -d
 ```


    Wait for the containers to start up. This may take a few minutes.



Notes
The GitLab container will store its data in a volume at ./gitlab-data. This means that if you remove the container, your data will not be lost.<br>
The Jenkins container will store its data in a volume at ./jenkins-data. This means that if you remove the container, your data will not be lost.<br>

If you want to stop and remove the containers, you can use the following command: 
```
docker-compose down
```
