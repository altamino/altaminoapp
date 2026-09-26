package io.agora.rtc.internal;

/* JADX INFO: loaded from: classes4.dex */
class AudioRoutingListenerImpl implements AudioRoutingListener {
    private long mAudioRoutingNativeHandle;

    native void nativeAudioRoutingChanged(long nativeHandle, int routing);

    native void nativeAudioRoutingError(long nativeHandle, int errCode);

    @Override // io.agora.rtc.internal.AudioRoutingListener
    public void onAudioRoutingChanged(int routing) {
        synchronized (this) {
            nativeAudioRoutingChanged(this.mAudioRoutingNativeHandle, routing);
        }
    }

    @Override // io.agora.rtc.internal.AudioRoutingListener
    public void onAudioRoutingDestroyed() {
        synchronized (this) {
            this.mAudioRoutingNativeHandle = 0L;
        }
    }

    @Override // io.agora.rtc.internal.AudioRoutingListener
    public void onAudioRoutingError(int errCode) {
        synchronized (this) {
            nativeAudioRoutingError(this.mAudioRoutingNativeHandle, errCode);
        }
    }

    AudioRoutingListenerImpl(long nativeHandle) {
        this.mAudioRoutingNativeHandle = nativeHandle;
    }
}
