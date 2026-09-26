package com.narvii.video.widget.videoview;

import com.narvii.video.interfaces.IMediaEventListener;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
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
    public void onVideoError(@Nullable Exception exc) {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoPrepared() {
    }

    @Override // com.narvii.video.interfaces.IMediaEventListener
    public void onVideoWindowIndexChanged(int i10, boolean z6) {
        IMediaEventListener.DefaultImpls.onVideoWindowIndexChanged(this, i10, z6);
    }
}
