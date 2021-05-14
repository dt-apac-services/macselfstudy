gcloud beta container --project "$GCP_PROJECT" clusters create "$CLUSTER_NAME" \
--zone "us-central1-c" --no-enable-basic-auth --cluster-version "1.18.17-gke.700" \
--release-channel "regular" --machine-type "n1-standard-1" --image-type "COS" \
--disk-type "pd-standard" --disk-size "32" --metadata disable-legacy-endpoints=true \
--scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" \
--num-nodes "1" --no-enable-stackdriver-kubernetes --enable-ip-alias --network "projects/$GCP_PROJECT/global/networks/default" \
--subnetwork "projects/$GCP_PROJECT/regions/us-central1/subnetworks/default" --default-max-pods-per-node "110" \
--no-enable-master-authorized-networks --addons HorizontalPodAutoscaling,HttpLoadBalancing --enable-autoupgrade \
--enable-autorepair --max-surge-upgrade 1 --max-unavailable-upgrade 0 --enable-shielded-nodes --node-labels Owner=$USERNAME
