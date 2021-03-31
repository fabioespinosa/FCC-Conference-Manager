to log in to OpenShift:

oc login https://openshift.cern.ch --token=<get token from openshift portal>

docker login -u fespinos -p <token> openshift-registry.web.cern.ch:443

docker tag fabioespinosa/the-conference openshift-registry.web.cern.ch/fcc-ee-conference/fcc-ee-conference
docker push openshift-registry.web.cern.ch/fcc-ee-conference/fcc-ee-conference
