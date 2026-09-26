package com.narvii.scene;

import com.narvii.model.Scene;
import com.narvii.scene.model.SceneInfo;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface StoryPostService {
    void launchStoryPost(@NotNull SceneInfo sceneInfo, @NotNull String str, @NotNull String str2);

    void launchStoryPreview(@Nullable List<? extends Scene> list);
}
