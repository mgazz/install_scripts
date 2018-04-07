#!/bin/bash -       
#description     :
#author          :Michele Gazzetti
#date            :16.03.18
#notes           :
#==============================================================================


create_dockerfile(){
    sed \
                -e 's!%%SUITE%%!'"$SUITE"'!g' \
                -e 's!%%MODULE%%!'"$MODULE"'!g' \
                Dockerfile.template \
                > "./Dockerfile"
}

run_test_build(){
    docker build \
        -t $MODULE-test \
        -f ./Dockerfile .
    docker run --rm \
        --privileged \
        --name $MODULE-test-run $MODULE-test
}

test_module(){
    create_dockerfile
    run_test_build
}

SUITE=$(sudo lsb_release -r | awk -F ' ' '{print $2}')

MODULE=pipenv
#test_module

MODULE=gtest
#test_module

MODULE=cuda
test_module





