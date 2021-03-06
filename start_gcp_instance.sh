#!/bin/sh

started=false
while ! $started
do
    gcloud compute instances start [YOUR_INSTANCE_NAME] --zone=YOUR_INSTANCE_REGION && started=true # us-central1-a
done

connected=false
while ! $connected
do
    ssh [YOUR_INSTANCE_NAME] && connected=true
done
