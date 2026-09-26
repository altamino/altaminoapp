package io.agora.rtc.audio;

/* JADX INFO: loaded from: classes8.dex */
interface IHardwareEarback {
    void destroy();

    int enableEarbackFeature(boolean enable);

    void initialize();

    boolean isHardwareEarbackSupported();

    int setHardwareEarbackVolume(int vol);
}
