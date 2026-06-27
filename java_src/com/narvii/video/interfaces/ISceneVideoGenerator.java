package com.narvii.video.interfaces;

import android.graphics.Bitmap;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ISceneVideoGenerator.kt */
/* loaded from: classes3.dex */
public abstract class ISceneVideoGenerator {

    /* compiled from: ISceneVideoGenerator.kt */
    public interface OnGenerateCallback {
        void onCancel();

        void onError(Exception exc);

        void onProgress(int i);

        void onSuccess(String str);
    }

    public abstract void abort();

    public abstract void generateSceneVideo(SceneInfo sceneInfo, String str, OnGenerateCallback onGenerateCallback, boolean z);

    public abstract void generateStoryVideo(SceneDraft sceneDraft, String str, OnGenerateCallback onGenerateCallback);

    public abstract Bitmap getLastFrameSnapShot(SceneInfo sceneInfo);

    public abstract void grabSceneCoverImage(SceneInfo sceneInfo, String str, OnGenerateCallback onGenerateCallback);

    public abstract void grabStoryCoverImage(SceneDraft sceneDraft, String str, int i, OnGenerateCallback onGenerateCallback);

    public abstract void prepareSceneList(ArrayList<SceneInfo> arrayList);

    public static /* synthetic */ void generateSceneVideo$default(ISceneVideoGenerator iSceneVideoGenerator, SceneInfo sceneInfo, String str, OnGenerateCallback onGenerateCallback, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: generateSceneVideo");
        }
        if ((i & 8) != 0) {
            z = false;
        }
        iSceneVideoGenerator.generateSceneVideo(sceneInfo, str, onGenerateCallback, z);
    }

    /* compiled from: ISceneVideoGenerator.kt */
    public static abstract class Task {
        private final String id;

        public abstract void abort();

        public abstract void execute();

        public abstract void pause();

        public Task(String id) {
            Intrinsics.checkParameterIsNotNull(id, "id");
            this.id = id;
        }

        public final String getId() {
            return this.id;
        }
    }
}
