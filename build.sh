#!/bin/bash

# tool part
Usage() {
    echo "Usage: $0 "
    exit 1
}

Parameter_judge() {
    correct_num="$1"
    real_num="$2"
    if [ "$correct_num" != "$real_num" ];then
        Usage
    fi
}

Zip_dir() {
    zip_dir="$1"
    build_dir="$2"
    
    zip -r $zip_dir $build_dir
    rm -rf $build_dir
}



# case part
Build_code() {
    version="$1"
    code_build="code-$version"

    mkdir $code_build

    file_list=( README.md \
                delete.py \
                display.py \
                insert.py \
                tamplate.json \
                mongo-control.sh \
                db-control.sh )
    
    for file in ${file_list[@]}
    do 
        cp $file $code_build
    done

    Zip_dir "$code_build.zip" "$code_build"
}

# run part
version="$1"

Parameter_judge 1 $#
Build_code $1