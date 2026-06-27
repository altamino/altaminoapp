package com.narvii.scene;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.logging.LogEvent;
import com.narvii.model.Blog;
import com.narvii.util.StoryUtils;
import java.util.UUID;

/* loaded from: classes3.dex */
public class ScenePlayBaseView extends FrameLayout implements ScenePlayView, SceneInteractLogView {
    protected boolean isActive;
    protected boolean isPreview;
    protected ScenePlayListener scenePlayListener;
    protected String showId;
    protected long startTime;
    protected Blog story;

    @Override // com.narvii.scene.SceneInteractLogView
    public void logEnd() {
    }

    public ScenePlayBaseView(Context context) {
        super(context);
        this.isActive = true;
        this.showId = UUID.randomUUID().toString();
    }

    public ScenePlayBaseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isActive = true;
        this.showId = UUID.randomUUID().toString();
    }

    @Override // com.narvii.scene.ScenePlayView
    public void onActiveChanged(boolean z) {
        this.isActive = z;
    }

    @Override // com.narvii.scene.ScenePlayView
    public void setStory(Blog blog, boolean z, ScenePlayListener scenePlayListener) {
        this.story = blog;
        this.scenePlayListener = scenePlayListener;
        this.isPreview = z;
    }

    protected LogEvent.Builder getLogEventBuilder() {
        return StoryUtils.getLogEventClickBuilder(this, this.story, this.isPreview, true);
    }

    @Override // com.narvii.scene.SceneInteractLogView
    public void logStart() {
        this.startTime = SystemClock.elapsedRealtime();
    }
}
