package com.narvii.scene;

import com.narvii.model.Blog;

/* loaded from: classes3.dex */
public interface ScenePlayView {
    void onActiveChanged(boolean z);

    void setStory(Blog blog, boolean z, ScenePlayListener scenePlayListener);
}
