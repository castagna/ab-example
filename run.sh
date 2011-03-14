#!/bin/bash

##
# Copyright © 2011 Talis Systems Ltd.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##

WORKING_PATH=/tmp/ab

if [ ! -d "$WORKING_PATH" ] ; then
    mkdir -p $WORKING_PATH
fi

cd $WORKING_PATH
svn co http://svn.apache.org/repos/asf/httpcomponents/httpcore/trunk/httpcore/ httpcore

cd $WORKING_PATH/httpcore
mvn install

cd $WORKING_PATH/httpcore/httpcode-ab
mvn install

cd $WORKING_PATH/httpcore/httpcode-benchmark
mvn test

