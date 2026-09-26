package com.narvii.scene;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;

/* JADX INFO: loaded from: classes10.dex */
public class ScenePlayBaseView extends FrameLayout implements ScenePlayView, SceneInteractLogView {
    protected boolean isActive;
    protected boolean isPreview;
    protected ScenePlayListener scenePlayListener;
    protected long startTime;

    public ScenePlayBaseView(Context context) {
        super(context);
        this.isActive = true;
    }

    @Override // com.narvii.scene.SceneInteractLogView
    public void logEnd() {
    }

    @Override // com.narvii.scene.ScenePlayView
    public void onActiveChanged(boolean z6) {
        this.isActive = z6;
    }

    public ScenePlayBaseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isActive = true;
    }

    @Override // com.narvii.scene.SceneInteractLogView
    @CallSuper
    public void logStart() {
        this.startTime = SystemClock.elapsedRealtime();
    }
}
