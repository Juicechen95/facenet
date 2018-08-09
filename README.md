# test on sansuo

## enviroment on lingzhi

所有环境之前已经在我的账户里面配好了，我是使用vitualenv配的。之前在主用户下的环境我也配了，但我不知道环境还在不在。

activate the environment

```
source ~/Venv/tf-1.7.0-gpu/bin/activate
```

deactivate the environment

```
deactivate
```


## begin testing
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

可能需要修改前三个参数：
1. data路径
2. pre-train 模型路径
3. pairs文件
