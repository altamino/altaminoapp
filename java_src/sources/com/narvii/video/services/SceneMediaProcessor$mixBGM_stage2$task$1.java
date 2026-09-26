package com.narvii.video.services;

import android.graphics.Bitmap;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class SceneMediaProcessor$mixBGM_stage2$task$1 implements IVideoServiceCallback {
    final /* synthetic */ n0 $completedTaskCount;
    final /* synthetic */ SceneMediaProcessor.MediaProcessListener $externalCallback;
    final /* synthetic */ k0 $failureFlag;
    final /* synthetic */ File $mixedAudio;
    final /* synthetic */ ArrayList<String> $outputPathList;
    final /* synthetic */ HashMap<String, Float> $progressMap;
    final /* synthetic */ SceneInfo $sceneInfo;
    final /* synthetic */ ArrayList<AVClipInfoPack> $sceneMediaList;
    final /* synthetic */ VideoManager $videoManager;

    SceneMediaProcessor$mixBGM_stage2$task$1(k0 k0Var, HashMap<String, Float> map, SceneInfo sceneInfo, SceneMediaProcessor.MediaProcessListener mediaProcessListener, VideoManager videoManager, n0 n0Var, ArrayList<AVClipInfoPack> arrayList, ArrayList<String> arrayList2, File file) {
        this.$failureFlag = k0Var;
        this.$progressMap = map;
        this.$sceneInfo = sceneInfo;
        this.$externalCallback = mediaProcessListener;
        this.$videoManager = videoManager;
        this.$completedTaskCount = n0Var;
        this.$sceneMediaList = arrayList;
        this.$outputPathList = arrayList2;
        this.$mixedAudio = file;
    }

    private final void deleteTmpFiles() {
        this.$mixedAudio.delete();
    }

    private final void onOverallProgress() {
        float fFloatValue = 0.0f;
        for (Float f : this.$progressMap.values()) {
            t.g(f);
            fFloatValue += f.floatValue();
        }
        ArrayList arrayList = SceneMediaProcessor.sceneInfoList;
        t.g(arrayList);
        float fMin = Math.min(arrayList.size(), fFloatValue);
        SceneMediaProcessor.MediaProcessListener mediaProcessListener = this.$externalCallback;
        if (mediaProcessListener != null) {
            ArrayList arrayList2 = SceneMediaProcessor.sceneInfoList;
            t.g(arrayList2);
            mediaProcessListener.onProgress(Math.min(1.0f, (fMin / (4 * arrayList2.size())) + 0.75f));
        }
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onExecutingTaskChanged(@NotNull g7.d newTask) {
        t.j(newTask, "newTask");
        IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
        HashMap map = SceneMediaProcessor.inProcessingEditingConfigMap;
        String id = this.$sceneInfo.id;
        t.i(id, "id");
        map.put(id, newTask);
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onVideoProcessed(@NotNull String path) {
        t.j(path, "path");
        IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
        if (this.$failureFlag.element) {
            return;
        }
        SceneMediaProcessor.inProcessingEditingConfigMap.remove(this.$sceneInfo.id);
        n0 n0Var = this.$completedTaskCount;
        int i10 = n0Var.element + 1;
        n0Var.element = i10;
        if (i10 >= this.$sceneMediaList.size()) {
            deleteTmpFiles();
            SceneMediaProcessor.MediaProcessListener mediaProcessListener = this.$externalCallback;
            if (mediaProcessListener != null) {
                mediaProcessListener.onProgress(1.0f);
            }
            SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = this.$externalCallback;
            if (mediaProcessListener2 != null) {
                mediaProcessListener2.onSuccess(this.$outputPathList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActionCancelled$lambda$0(SceneMediaProcessor$mixBGM_stage2$task$1 this$0, VideoManager videoManager) {
        t.j(this$0, "this$0");
        t.j(videoManager, "$videoManager");
        this$0.deleteTmpFiles();
        SceneMediaProcessor.INSTANCE.terminateAll(videoManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActionFailed$lambda$1(SceneMediaProcessor$mixBGM_stage2$task$1 this$0, VideoManager videoManager) {
        t.j(this$0, "this$0");
        t.j(videoManager, "$videoManager");
        this$0.deleteTmpFiles();
        SceneMediaProcessor.INSTANCE.terminateAll(videoManager);
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onActionCancelled() {
        IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
        k0 k0Var = this.$failureFlag;
        if (k0Var.element) {
            return;
        }
        k0Var.element = true;
        final VideoManager videoManager = this.$videoManager;
        Utils.post(new Runnable() { // from class: com.narvii.video.services.j
            @Override // java.lang.Runnable
            public final void run() {
                SceneMediaProcessor$mixBGM_stage2$task$1.onActionCancelled$lambda$0(this.f2946a, videoManager);
            }
        });
        SceneMediaProcessor.MediaProcessListener mediaProcessListener = this.$externalCallback;
        if (mediaProcessListener != null) {
            mediaProcessListener.onFailed(true);
        }
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onActionFailed(@Nullable Exception exc) {
        IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
        k0 k0Var = this.$failureFlag;
        if (k0Var.element) {
            return;
        }
        k0Var.element = true;
        final VideoManager videoManager = this.$videoManager;
        Utils.post(new Runnable() { // from class: com.narvii.video.services.k
            @Override // java.lang.Runnable
            public final void run() {
                SceneMediaProcessor$mixBGM_stage2$task$1.onActionFailed$lambda$1(this.f2948a, videoManager);
            }
        });
        SceneMediaProcessor.MediaProcessListener mediaProcessListener = this.$externalCallback;
        if (mediaProcessListener != null) {
            SceneMediaProcessor.MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener, false, 1, null);
        }
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onActionStarted() {
        IVideoServiceCallback.DefaultImpls.onActionStarted(this);
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onFrameBitmapLoaded(int i10, @Nullable Bitmap bitmap) {
        IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i10, bitmap);
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onFramePicturesLoaded(int i10, @Nullable File file) {
        IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i10, file);
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onProgress(float f, @Nullable String str) {
        IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
        if (this.$failureFlag.element) {
            return;
        }
        HashMap<String, Float> map = this.$progressMap;
        String id = this.$sceneInfo.id;
        t.i(id, "id");
        map.put(id, Float.valueOf(f));
        onOverallProgress();
    }
}
