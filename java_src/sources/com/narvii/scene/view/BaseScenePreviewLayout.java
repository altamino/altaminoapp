package com.narvii.scene.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.scene.interfaces.IScenePlayer;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class BaseScenePreviewLayout extends FrameLayout {

    @Nullable
    private IScenePlayer.BeforePlayingListener beforePlayListener;

    @Nullable
    private IScenePlayer.OnPlayingListener onPlayListener;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseScenePreviewLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    @Nullable
    public IScenePlayer.BeforePlayingListener getBeforePlayListener() {
        return this.beforePlayListener;
    }

    @Nullable
    public IScenePlayer.OnPlayingListener getOnPlayListener() {
        return this.onPlayListener;
    }

    public abstract boolean isPlaying();

    public abstract void pause();

    public abstract void play();

    public abstract void release();

    public abstract void seekScene(@NotNull String str);

    public void setBeforePlayListener(@Nullable IScenePlayer.BeforePlayingListener beforePlayingListener) {
        this.beforePlayListener = beforePlayingListener;
    }

    public void setOnPlayListener(@Nullable IScenePlayer.OnPlayingListener onPlayingListener) {
        this.onPlayListener = onPlayingListener;
    }

    public abstract void toPause();

    public abstract void toResume(boolean z6);

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseScenePreviewLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    public void setBeforePlayingListener(@NotNull IScenePlayer.BeforePlayingListener beforePlayingListener) {
        t.j(beforePlayingListener, "beforePlayingListener");
        setBeforePlayListener(getBeforePlayListener());
    }

    public void setOnPlayingListener(@NotNull IScenePlayer.OnPlayingListener onPlayingListener) {
        t.j(onPlayingListener, "onPlayingListener");
        setOnPlayListener(onPlayingListener);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseScenePreviewLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
    }

    public /* synthetic */ BaseScenePreviewLayout(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
