DATASET_NAME=$1

if [[ $DATASET_NAME != "day-night" && $DATASET_NAME != "leather-fabric" && $DATASET_NAME != "metal-stone" &&  $DATASET_NAME != "oil-chinese" && $DATASET_NAME != "plastic-metal" && $DATASET_NAME != "facades" && $DATASET_NAME != "sketch-photo"  && $DATASET_NAME != "plastic-wood" ]]; then
echo "Usage: bash download_dataset.sh dataset_name"
echo "dataset names: facades, day-night,  leather-fabric,  metal-stone,  oil-chinese,  plastic-fabric, plastic-metal,  plastic-wood,  sketch-photo"
exit 1
fi

LINK=http://www.cs.mun.ca/~yz7241/dataset/$DATASET_NAME.zip
FILE=./datasets/$DATASET_NAME.zip
DIR=./datasets/$DATASET_NAME/
wget -N $LINK -O $FILE
mkdir $DIR
unzip $FILE -d ./datasets/
rm $FILE
