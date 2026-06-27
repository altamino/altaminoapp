package com.narvii.nvplayerview;

import android.view.Surface;
import android.view.View;

/* loaded from: classes3.dex */
public interface IRenderView {
    public static final int CENTER_CROP_TYPE = 1;
    public static final int FIT_CENTER_TYPE = 0;

    void addSurfaceListener(ISurfaceListener iSurfaceListener);

    Surface getSurface();

    View getView();
}
