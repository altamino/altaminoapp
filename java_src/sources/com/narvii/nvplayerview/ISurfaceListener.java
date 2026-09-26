package com.narvii.nvplayerview;

import android.view.Surface;

/* JADX INFO: loaded from: classes10.dex */
public interface ISurfaceListener {
    void surfaceCreated(Surface surface);

    void surfaceDestroyed(Surface surface);

    void surfaceSizeChanged(Surface surface, int i10, int i11);
}
