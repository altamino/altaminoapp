package com.narvii.editor.cropping.dynamic.egl;

/* JADX INFO: loaded from: classes9.dex */
public class OffscreenSurface extends EglSurfaceBase {
    public OffscreenSurface(EglCore eglCore, int i10, int i11) {
        super(eglCore);
        createOffscreenSurface(i10, i11);
    }

    public void release() {
        releaseEglSurface();
    }
}
