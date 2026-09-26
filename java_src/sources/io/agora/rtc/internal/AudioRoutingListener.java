package io.agora.rtc.internal;

/* JADX INFO: loaded from: classes8.dex */
interface AudioRoutingListener {
    void onAudioRoutingChanged(int routing);

    void onAudioRoutingDestroyed();

    void onAudioRoutingError(int errCode);
}
