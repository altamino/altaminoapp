package com.narvii.scene;

import com.narvii.model.Scene;
import com.narvii.scene.model.SceneInfo;
import java.util.List;

/* compiled from: StoryPostService.kt */
/* loaded from: classes3.dex */
public interface StoryPostService {
    void launchStoryPost(SceneInfo sceneInfo, String str, String str2);

    void launchStoryPreview(List<? extends Scene> list);
}
