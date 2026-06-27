package com.narvii.video.services;

import android.graphics.Bitmap;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.services.SceneMediaProcessor;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: SceneMediaProcessor.kt */
/* loaded from: classes3.dex */
public final class SceneMediaProcessor$mixBGM_stage2$task$1 implements IVideoServiceCallback {
    final /* synthetic */ Ref$IntRef $completedTaskCount;
    final /* synthetic */ SceneMediaProcessor.MediaProcessListener $externalCallback;
    final /* synthetic */ Ref$BooleanRef $failureFlag;
    final /* synthetic */ File $mixedAudio;
    final /* synthetic */ ArrayList $outputPathList;
    final /* synthetic */ HashMap $progressMap;
    final /* synthetic */ SceneInfo $sceneInfo;
    final /* synthetic */ ArrayList $sceneMediaList;
    final /* synthetic */ VideoManager $videoManager;

    SceneMediaProcessor$mixBGM_stage2$task$1(Ref$BooleanRef ref$BooleanRef, HashMap map, SceneInfo sceneInfo, VideoManager videoManager, SceneMediaProcessor.MediaProcessListener mediaProcessListener, Ref$IntRef ref$IntRef, ArrayList arrayList, ArrayList arrayList2, File file) {
        this.$failureFlag = ref$BooleanRef;
        this.$progressMap = map;
        this.$sceneInfo = sceneInfo;
        this.$videoManager = videoManager;
        this.$externalCallback = mediaProcessListener;
        this.$completedTaskCount = ref$IntRef;
        this.$sceneMediaList = arrayList;
        this.$outputPathList = arrayList2;
        this.$mixedAudio = file;
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onActionStarted() {
        IVideoServiceCallback.DefaultImpls.onActionStarted(this);
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onFrameBitmapLoaded(int i, Bitmap bitmap) {
        IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i, bitmap);
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onFramePicturesLoaded(int i, File file) {
        IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i, file);
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onProgress(float f, String str) {
        IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
        if (this.$failureFlag.element) {
            return;
        }
        HashMap map = this.$progressMap;
        String str2 = this.$sceneInfo.id;
        Intrinsics.checkExpressionValueIsNotNull(str2, "sceneInfo.id");
        map.put(str2, Float.valueOf(f));
        onOverallProgress();
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onActionCancelled() {
        IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
        Ref$BooleanRef ref$BooleanRef = this.$failureFlag;
        if (ref$BooleanRef.element) {
            return;
        }
        ref$BooleanRef.element = true;
        Utils.post(new Runnable() { // from class: com.narvii.video.services.SceneMediaProcessor$mixBGM_stage2$task$1$onActionCancelled$1
            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.deleteTmpFiles();
                SceneMediaProcessor.INSTANCE.terminateAll(this.this$0.$videoManager);
            }
        });
        SceneMediaProcessor.MediaProcessListener mediaProcessListener = this.$externalCallback;
        if (mediaProcessListener != null) {
            mediaProcessListener.onFailed(true);
        }
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onActionFailed(Exception exc) {
        IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
        Ref$BooleanRef ref$BooleanRef = this.$failureFlag;
        if (ref$BooleanRef.element) {
            return;
        }
        ref$BooleanRef.element = true;
        Utils.post(new Runnable() { // from class: com.narvii.video.services.SceneMediaProcessor$mixBGM_stage2$task$1$onActionFailed$1
            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.deleteTmpFiles();
                SceneMediaProcessor.INSTANCE.terminateAll(this.this$0.$videoManager);
            }
        });
        SceneMediaProcessor.MediaProcessListener mediaProcessListener = this.$externalCallback;
        if (mediaProcessListener != null) {
            SceneMediaProcessor.MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener, false, 1, null);
        }
    }

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onVideoProcessed(String path) {
        Intrinsics.checkParameterIsNotNull(path, "path");
        IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
        if (this.$failureFlag.element) {
            return;
        }
        SceneMediaProcessor.access$getInProcessingEditingConfigMap$p(SceneMediaProcessor.INSTANCE).remove(this.$sceneInfo.id);
        Ref$IntRef ref$IntRef = this.$completedTaskCount;
        ref$IntRef.element++;
        if (ref$IntRef.element >= this.$sceneMediaList.size()) {
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

    @Override // com.narvii.video.interfaces.IVideoServiceCallback
    public void onExecutingTaskChanged(MediaEditingConfig newTask) {
        Intrinsics.checkParameterIsNotNull(newTask, "newTask");
        IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
        HashMap mapAccess$getInProcessingEditingConfigMap$p = SceneMediaProcessor.access$getInProcessingEditingConfigMap$p(SceneMediaProcessor.INSTANCE);
        String str = this.$sceneInfo.id;
        Intrinsics.checkExpressionValueIsNotNull(str, "sceneInfo.id");
        mapAccess$getInProcessingEditingConfigMap$p.put(str, newTask);
    }

    private final void onOverallProgress() {
        float fFloatValue = 0.0f;
        for (Float progress : this.$progressMap.values()) {
            Intrinsics.checkExpressionValueIsNotNull(progress, "progress");
            fFloatValue += progress.floatValue();
        }
        SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
        if (SceneMediaProcessor.sceneInfoList == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        float fMin = Math.min(r0.size(), fFloatValue);
        SceneMediaProcessor.MediaProcessListener mediaProcessListener = this.$externalCallback;
        if (mediaProcessListener != null) {
            float f = 4;
            SceneMediaProcessor sceneMediaProcessor2 = SceneMediaProcessor.INSTANCE;
            if (SceneMediaProcessor.sceneInfoList == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            mediaProcessListener.onProgress(Math.min(1.0f, 0.75f + (fMin / (f * r6.size()))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteTmpFiles() {
        this.$mixedAudio.delete();
    }
}
