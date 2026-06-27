package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;

/* loaded from: classes2.dex */
public final class zzacc extends zzaav {
    private final VideoController.VideoLifecycleCallbacks zzaaw;

    public zzacc(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.zzaaw = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void onVideoStart() {
        this.zzaaw.onVideoStart();
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void onVideoPlay() {
        this.zzaaw.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void onVideoPause() {
        this.zzaaw.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void onVideoEnd() {
        this.zzaaw.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.ads.zzaau
    public final void onVideoMute(boolean z) {
        this.zzaaw.onVideoMute(z);
    }
}
