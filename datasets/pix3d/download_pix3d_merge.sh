#!/bin/bash -e
# -*- coding: utf-8 -*-
# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved

# Download the Pix3D dataset and split files

cd "${0%/*}"

wget http://pix3d.csail.mit.edu/data/pix3d.zip
unzip -qq pix3d.zip

BASE=https://lsp4dmodel.s3.eu-central-1.amazonaws.com

wget $BASE/pix3d/pix3d_merge/pix3d_s1_train_merge.json
wget $BASE/pix3d/pix3d_merge/pix3d_s1_test_merge.json
wget $BASE/pix3d/pix3d_merge/pix3d_s2_train_merge.json
wget $BASE/pix3d/pix3d_merge/pix3d_s2_test_merge.json
