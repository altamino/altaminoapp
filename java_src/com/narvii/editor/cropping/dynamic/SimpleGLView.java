package com.narvii.editor.cropping.dynamic;

import android.graphics.Rect;
import android.view.Surface;
import android.view.View;
import com.narvii.nvplayer.INVPlayer;

/* compiled from: SimpleGLView.kt */
/* loaded from: classes2.dex */
public interface SimpleGLView {
    void changeFilter(int i);

    View getView();

    void initViews(INVPlayer iNVPlayer, int i);

    void renderAnotherSurface(Surface surface);

    void setVideoEditorRect(Rect rect);

    void stopRenderAnotherSurface();
}
