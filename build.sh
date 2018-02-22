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

    file_list=( delete.py display.py insert.py mongo-control.sh preparation.sh README.md tamplate.json db-control.sh )
    
    for file in ${file_list[@]}
    do 
        cp $file $code_build
    done

    Zip_dir "$code_build.zip" "$code_build"
}

Build_deploy() {
    version="$1"
    deploy_build="deploy-$version"

    mkdir $deploy_build

    file_list=( deploy.sh )

    for file in ${file_list[@]}
    do 
        cp $file $deploy_build
    done

    Zip_dir "$deploy_build.zip" "$deploy_build"
}

case "$1" in 
    code)
        Parameter_judge 2 $#
        Build_code $2
        ;;

    deploy)
        Parameter_judge 2 $#
        Build_deploy $2
        ;;

    *)
        Usage
        ;;
esac
