package io.agora.rtc.mediaio;

/* loaded from: classes4.dex */
public interface IVideoSource {
    int getBufferType();

    void onDispose();

    boolean onInitialize(IVideoFrameConsumer iVideoFrameConsumer);

    boolean onStart();

    void onStop();
}
