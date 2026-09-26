package io.agora.rtc.mediaio;

/* JADX INFO: loaded from: classes6.dex */
public interface IVideoSource {
    int getBufferType();

    int getCaptureType();

    int getContentHint();

    void onDispose();

    boolean onInitialize(IVideoFrameConsumer consumer);

    boolean onStart();

    void onStop();
}
