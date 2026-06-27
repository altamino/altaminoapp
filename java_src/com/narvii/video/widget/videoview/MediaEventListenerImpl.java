package com.narvii.video.widget.videoview;

import com.narvii.video.interfaces.IMediaEventListener;

/* compiled from: MediaEventListenerImpl.kt */
/* loaded from: classes3.dex */
public class MediaEventListenerImpl implements IMediaEventListener {
    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onAudioTrackAllPrepared() {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onDoNextVideoSeek() {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoCompleted() {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoError(Exception exc) {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoPrepared() {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoWindowIndexChanged(int i, boolean z) {
        IMediaEventListener.DefaultImpls.onVideoWindowIndexChanged(this, i, z);
    }
}
