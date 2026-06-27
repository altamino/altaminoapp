package io.agora.rtc.internal;

/* loaded from: classes4.dex */
interface AudioRoutingListener {
    void onAudioRoutingChanged(int i);

    void onAudioRoutingDestroyed();

    void onAudioRoutingError(int i);
}
