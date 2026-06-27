package com.narvii.video.gles;

import android.graphics.SurfaceTexture;
import android.view.Surface;

/* loaded from: classes3.dex */
public class WindowSurface extends EglSurfaceBase {
    private boolean mReleaseSurface;
    private Surface mSurface;

    public WindowSurface(EglCore eglCore, Surface surface, boolean z) {
        super(eglCore);
        createWindowSurface(surface);
        this.mSurface = surface;
        this.mReleaseSurface = z;
    }

    public WindowSurface(EglCore eglCore, SurfaceTexture surfaceTexture) {
        super(eglCore);
        createWindowSurface(surfaceTexture);
    }

    public void release() {
        releaseEglSurface();
        Surface surface = this.mSurface;
        if (surface != null) {
            if (this.mReleaseSurface) {
                surface.release();
            }
            this.mSurface = null;
        }
    }

    public void recreate(EglCore eglCore) {
        Surface surface = this.mSurface;
        if (surface == null) {
            throw new RuntimeException("not yet implemented for SurfaceTexture");
        }
        this.mEglCore = eglCore;
        createWindowSurface(surface);
    }
}
