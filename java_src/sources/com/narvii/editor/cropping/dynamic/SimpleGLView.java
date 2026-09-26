package com.narvii.editor.cropping.dynamic;

import android.graphics.Rect;
import android.view.Surface;
import android.view.View;
import com.narvii.nvplayer.INVPlayer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface SimpleGLView {
    void changeFilter(int i10);

    @NotNull
    View getView();

    void initViews(@NotNull INVPlayer iNVPlayer, int i10);

    void renderAnotherSurface(@Nullable Surface surface);

    void setVideoEditorRect(@NotNull Rect rect);

    void stopRenderAnotherSurface();
}
