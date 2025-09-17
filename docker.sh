docker run -d \
	  -u root \
	    --name jenkins \
	      -p 8080:8080 -p 50000:50000 \
	        -v /mnt/c/Users/DELL/Documents/jenkins_home:/var/jenkins_home \
		  -v /var/run/docker.sock:/var/run/docker.sock \
		    jenkins/jenkins:jdk21

