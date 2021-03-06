# align the LFW dataset
for N in {1..4}; do \
python src/align/align_dataset_mtcnn.py \
~/data/lfw/raw \
~/data/lfw/lfw_mtcnnpy_160_2 \
--image_size 160 \
--margin 32 \
--random_order \
--gpu_memory_fraction 0.25 \
& done
# align the sansuo dataset  # Total number of images: 22299
#                           # Number of successfully aligned images: 5523
for N in {1..4}; do \
python src/align/align_dataset_mtcnn.py \
~/data/DATA_sansuo/raw \
~/data/DATA_sansuo/sansuo_mtcnnpy_160 \
--image_size 160 \
--margin 32 \
--random_order \
--gpu_memory_fraction 0.25 \
& done
# align the CASIA dataset #Total number of images: 65848
#                          #Number of successfully aligned images: 16283
for N in {1..4}; do \
python src/align/align_dataset_mtcnn.py \
~/data/CASIA_webface/CASIA-raw \
~/data/CASIA_webface/casia_mtcnnpy_160 \
--image_size 160 \
--margin 32 \
--random_order \
--gpu_memory_fraction 0.25 \
& done



# run the test on lfw
python src/validate_on_lfw.py \
~/data/lfw/lfw_mtcnnpy_160 \
/home/jcz/project/facenet/models/pretrained/20180402-114759 \
--distance_metric 1 \
--use_flipped_images \
--subtract_mean \
--use_fixed_image_standardization
# run test on sansuo
python src/validate_on_lfw.py \
~/data/DATA_sansuo/sansuo_mtcnnpy_160 \
/home/jcz/project/facenet/models/pretrained/20180402-114759 \
--lfw_pairs /home/jcz/data/DATA_sansuo/pairs.txt
--distance_metric 1 \
--use_flipped_images \
--subtract_mean \
--use_fixed_image_standardization

python src/validate_on_lfw.py \
~/data/CASIA_webface/casia_mtcnnpy_160 \
/home/jcz/project/facenet/models/pretrained/20180402-114759 \
--distance_metric 1 \
--use_flipped_images \
--subtract_mean \
--use_fixed_image_standardization
