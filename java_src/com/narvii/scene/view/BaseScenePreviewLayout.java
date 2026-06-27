package com.narvii.scene.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.scene.interfaces.IScenePlayer;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseScenePreviewLayout.kt */
/* loaded from: classes3.dex */
public abstract class BaseScenePreviewLayout extends FrameLayout {
    private HashMap _$_findViewCache;
    private IScenePlayer.BeforePlayingListener beforePlayListener;
    private IScenePlayer.OnPlayingListener onPlayListener;

    public BaseScenePreviewLayout(Context context) {
        this(context, null, 0, 6, null);
    }

    public BaseScenePreviewLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public abstract boolean isPlaying();

    public abstract void pause();

    public abstract void play();

    public abstract void release();

    public abstract void seekScene(String str);

    public abstract void toPause();

    public abstract void toResume(boolean z);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseScenePreviewLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    public /* synthetic */ BaseScenePreviewLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public IScenePlayer.OnPlayingListener getOnPlayListener() {
        return this.onPlayListener;
    }

    public void setOnPlayListener(IScenePlayer.OnPlayingListener onPlayingListener) {
        this.onPlayListener = onPlayingListener;
    }

    public IScenePlayer.BeforePlayingListener getBeforePlayListener() {
        return this.beforePlayListener;
    }

    public void setBeforePlayListener(IScenePlayer.BeforePlayingListener beforePlayingListener) {
        this.beforePlayListener = beforePlayingListener;
    }

    public void setOnPlayingListener(IScenePlayer.OnPlayingListener onPlayingListener) {
        Intrinsics.checkParameterIsNotNull(onPlayingListener, "onPlayingListener");
        setOnPlayListener(onPlayingListener);
    }

    public void setBeforePlayingListener(IScenePlayer.BeforePlayingListener beforePlayingListener) {
        Intrinsics.checkParameterIsNotNull(beforePlayingListener, "beforePlayingListener");
        setBeforePlayListener(getBeforePlayListener());
    }
}
