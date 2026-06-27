package com.narvii.video.interfaces;

/* compiled from: IMediaEventListener.kt */
/* loaded from: classes3.dex */
public interface IMediaEventListener {

    /* compiled from: IMediaEventListener.kt */
    public static final class DefaultImpls {
        public static void onVideoWindowIndexChanged(IMediaEventListener iMediaEventListener, int i, boolean z) {
        }
    }

    void onAudioTrackAllPrepared();

    void onDoNextVideoSeek();

    void onVideoCompleted();

    void onVideoError(Exception exc);

    void onVideoPrepared();

    void onVideoWindowIndexChanged(int i, boolean z);
}
