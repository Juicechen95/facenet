# test on sansuo

```
# run test on sansuo
python src/validate_on_lfw.py \
~/data/DATA_sansuo/sansuo_mtcnnpy_160 \
/home/jcz/project/facenet/models/pretrained/20180402-114759 \
--lfw_pairs ./sansuo_pairs.txt
--distance_metric 1 \
--use_flipped_images \
--subtract_mean \
--use_fixed_image_standardization
```

需要修改前三个参数：
1. data路径
2. pre-train 模型路径
3. pairs文件
