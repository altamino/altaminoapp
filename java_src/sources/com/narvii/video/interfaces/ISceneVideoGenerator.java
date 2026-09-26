package com.narvii.video.interfaces;

import android.graphics.Bitmap;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import java.util.ArrayList;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ISceneVideoGenerator {

    public interface OnGenerateCallback {
        void onCancel();

        void onError(@Nullable Exception exc);

        void onProgress(int i10);

        void onSuccess(@NotNull String str);
    }

    public static abstract class Task {

        @NotNull
        private final String id;

        public abstract void abort();

        public abstract void execute();

        @NotNull
        public final String getId() {
            return this.id;
        }

        public abstract void pause();

        public Task(@NotNull String id) {
            t.j(id, "id");
            this.id = id;
        }
    }

    public abstract void abort();

    public abstract void generateSceneVideo(@NotNull SceneInfo sceneInfo, @NotNull String str, @NotNull OnGenerateCallback onGenerateCallback, boolean z6);

    public abstract void generateStoryVideo(@NotNull SceneDraft sceneDraft, @NotNull String str, @NotNull OnGenerateCallback onGenerateCallback);

    @Nullable
    public abstract Bitmap getLastFrameSnapShot(@Nullable SceneInfo sceneInfo);

    public abstract void grabSceneCoverImage(@NotNull SceneInfo sceneInfo, @NotNull String str, @NotNull OnGenerateCallback onGenerateCallback);

    public abstract void grabStoryCoverImage(@NotNull SceneDraft sceneDraft, @NotNull String str, int i10, @NotNull OnGenerateCallback onGenerateCallback);

    public abstract void prepareSceneList(@NotNull ArrayList<SceneInfo> arrayList);

    public static /* synthetic */ void generateSceneVideo$default(ISceneVideoGenerator iSceneVideoGenerator, SceneInfo sceneInfo, String str, OnGenerateCallback onGenerateCallback, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: generateSceneVideo");
        }
        if ((i10 & 8) != 0) {
            z6 = false;
        }
        iSceneVideoGenerator.generateSceneVideo(sceneInfo, str, onGenerateCallback, z6);
    }
}
