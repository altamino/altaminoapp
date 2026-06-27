package com.narvii.nvplayerview;

import android.view.Surface;

/* loaded from: classes3.dex */
public interface ISurfaceListener {

    /* renamed from: com.narvii.nvplayerview.ISurfaceListener$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$surfaceCreated(ISurfaceListener iSurfaceListener, Surface surface) {
        }

        public static void $default$surfaceDestroyed(ISurfaceListener iSurfaceListener, Surface surface) {
        }

        public static void $default$surfaceSizeChanged(ISurfaceListener iSurfaceListener, Surface surface, int i, int i2) {
        }
    }

    void surfaceCreated(Surface surface);

    void surfaceDestroyed(Surface surface);

    void surfaceSizeChanged(Surface surface, int i, int i2);
}
