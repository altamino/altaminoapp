package com.google.android.exoplayer2.video;

import android.view.Surface;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class g extends com.google.android.exoplayer2.mediacodec.m {
    public final boolean isSurfaceValid;
    public final int surfaceIdentityHashCode;

    public g(Throwable th, @Nullable com.google.android.exoplayer2.mediacodec.n nVar, @Nullable Surface surface) {
        boolean z6;
        super(th, nVar);
        this.surfaceIdentityHashCode = System.identityHashCode(surface);
        if (surface != null && !surface.isValid()) {
            z6 = false;
        } else {
            z6 = true;
        }
        this.isSurfaceValid = z6;
    }
}
