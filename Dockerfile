FROM kivy/buildozer

WORKDIR /home/user/hostcwd

RUN sudo chown -R user:user /home/user/hostcwd \
    && buildozer init \
    && sed -i 's/# android.accept_sdk_license = False/android.accept_sdk_license = True/g' ~/hostcwd/buildozer.spec \
    && echo "print('hoge')" > ~/hostcwd/main.py \
    && buildozer android debug
