#!/usr/bin/python3

import argparse
import subprocess

if __name__ == '__main__' :
    # Initialize the parser
    parser = argparse.ArgumentParser(
        description="Build and push docker images to dockerhub"
    )

    # Commandline arguments
    parser.add_argument('--DOCKERHUB_USERNAME', help='Username dockerhub account')
    parser.add_argument('--DOCKERHUB_TOKEN', help='Dockerhub account access token')

    
