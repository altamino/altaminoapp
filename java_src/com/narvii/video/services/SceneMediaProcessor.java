package com.narvii.video.services;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.cropping.CroppingData;
import com.narvii.media.online.audio.model.AssetCategory;
import com.narvii.media.online.audio.model.Sound;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.ISceneVideoGenerator;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.SceneMediaProcessor;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: SceneMediaProcessor.kt */
/* loaded from: classes3.dex */
public final class SceneMediaProcessor {
    private static int completedTaskCount;
    private static MediaEditingConfig inProcessingGlobalMusicMixingTask;
    private static ArrayList<SceneInfo> sceneInfoList;
    private static boolean storyProcessFailureFlag;
    public static final SceneMediaProcessor INSTANCE = new SceneMediaProcessor();
    private static final HashMap<String, Float> progressMap = new HashMap<>();
    private static final HashMap<String, MediaProcessListener> processListenerMap = new HashMap<>();
    private static final HashMap<String, MediaEditingConfig> inProcessingEditingConfigMap = new HashMap<>();

    private SceneMediaProcessor() {
    }

    public static final /* synthetic */ int access$getCompletedTaskCount$p(SceneMediaProcessor sceneMediaProcessor) {
        return completedTaskCount;
    }

    public static final /* synthetic */ HashMap access$getInProcessingEditingConfigMap$p(SceneMediaProcessor sceneMediaProcessor) {
        return inProcessingEditingConfigMap;
    }

    public static final /* synthetic */ HashMap access$getProcessListenerMap$p(SceneMediaProcessor sceneMediaProcessor) {
        return processListenerMap;
    }

    public static final /* synthetic */ HashMap access$getProgressMap$p(SceneMediaProcessor sceneMediaProcessor) {
        return progressMap;
    }

    public static final /* synthetic */ boolean access$getStoryProcessFailureFlag$p(SceneMediaProcessor sceneMediaProcessor) {
        return storyProcessFailureFlag;
    }

    /* compiled from: SceneMediaProcessor.kt */
    public interface MediaProcessListener {
        void onFailed(boolean z);

        void onProgress(float f);

        void onSuccess(ArrayList<String> arrayList);

        /* compiled from: SceneMediaProcessor.kt */
        public static final class DefaultImpls {
            public static void onFailed(MediaProcessListener mediaProcessListener, boolean z) {
            }

            public static void onProgress(MediaProcessListener mediaProcessListener, float f) {
            }

            public static void onSuccess(MediaProcessListener mediaProcessListener, ArrayList<String> outputList) {
                Intrinsics.checkParameterIsNotNull(outputList, "outputList");
            }

            public static /* synthetic */ void onFailed$default(MediaProcessListener mediaProcessListener, boolean z, int i, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onFailed");
                }
                if ((i & 1) != 0) {
                    z = false;
                }
                mediaProcessListener.onFailed(z);
            }
        }
    }

    public final void release(VideoManager videoManager) {
        Intrinsics.checkParameterIsNotNull(videoManager, "videoManager");
        processListenerMap.clear();
        progressMap.clear();
        for (MediaEditingConfig task : inProcessingEditingConfigMap.values()) {
            Intrinsics.checkExpressionValueIsNotNull(task, "task");
            videoManager.abort(task);
        }
        MediaEditingConfig mediaEditingConfig = inProcessingGlobalMusicMixingTask;
        if (mediaEditingConfig != null) {
            videoManager.abort(mediaEditingConfig);
        }
        inProcessingEditingConfigMap.clear();
        completedTaskCount = 0;
        storyProcessFailureFlag = false;
    }

    private final void addMediaProcessListener(String str, MediaProcessListener mediaProcessListener) {
        processListenerMap.put(str, mediaProcessListener);
    }

    private final void removeMediaProcessListener(String str) {
        processListenerMap.remove(str);
    }

    public final void removeScene(SceneInfo scene, VideoManager videoManager) {
        Intrinsics.checkParameterIsNotNull(scene, "scene");
        Intrinsics.checkParameterIsNotNull(videoManager, "videoManager");
        scene.currentSceneVideoProgress = -1.0f;
        progressMap.remove(scene.id);
        processListenerMap.remove(scene.id);
        MediaEditingConfig mediaEditingConfig = inProcessingEditingConfigMap.get(scene.id);
        if (mediaEditingConfig != null) {
            videoManager.abort(mediaEditingConfig);
            inProcessingEditingConfigMap.remove(scene.id);
        }
    }

    public static /* synthetic */ MediaEditingConfig getSceneCoverImage$default(SceneMediaProcessor sceneMediaProcessor, AVClipInfoPack aVClipInfoPack, File file, VideoManager videoManager, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, int i, Object obj) {
        if ((i & 16) != 0) {
            mediaProcessListener = null;
        }
        return sceneMediaProcessor.getSceneCoverImage(aVClipInfoPack, file, videoManager, iSceneVideoGenerator, mediaProcessListener);
    }

    public final MediaEditingConfig getSceneCoverImage(AVClipInfoPack videoClip, final File outputFile, VideoManager videoManager, ISceneVideoGenerator iSceneVideoGenerator, final MediaProcessListener mediaProcessListener) {
        Intrinsics.checkParameterIsNotNull(videoClip, "videoClip");
        Intrinsics.checkParameterIsNotNull(outputFile, "outputFile");
        Intrinsics.checkParameterIsNotNull(videoManager, "videoManager");
        if (videoClip.getInputFile() == null) {
            if (mediaProcessListener != null) {
                MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener, false, 1, null);
            }
            return null;
        }
        if (outputFile.exists()) {
            Utils.deleteDir(outputFile);
        }
        double d = videoClip.trimStartInMs;
        double dTrimmedDurationInMs = videoClip.trimmedDurationInMs();
        Double.isNaN(dTrimmedDurationInMs);
        Double.isNaN(d);
        return videoManager.getCoverImage(videoClip, outputFile, (int) (d + (dTrimmedDurationInMs * 0.3d)), (88 & 8) != 0 ? -2 : 0, (88 & 16) != 0 ? -2 : 0, (88 & 32) != 0 ? null : new IVideoServiceCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.getSceneCoverImage.1
            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionStarted() {
                IVideoServiceCallback.DefaultImpls.onActionStarted(this);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(MediaEditingConfig newTask) {
                Intrinsics.checkParameterIsNotNull(newTask, "newTask");
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFrameBitmapLoaded(int i, Bitmap bitmap) {
                IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i, bitmap);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onProgress(float f, String str) {
                IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onVideoProcessed(String path) {
                Intrinsics.checkParameterIsNotNull(path, "path");
                IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFramePicturesLoaded(int i, File file) {
                IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i, file);
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(outputFile.getAbsolutePath());
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onSuccess(arrayList);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionCancelled() {
                IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onFailed(true);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionFailed(Exception exc) {
                IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                }
            }
        }, (88 & 64) != 0 ? null : null, (88 & 128) != 0 ? false : true);
    }

    public static /* synthetic */ void getSceneCoverImage$default(SceneMediaProcessor sceneMediaProcessor, SceneInfo sceneInfo, File file, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, int i, Object obj) {
        if ((i & 8) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.getSceneCoverImage(sceneInfo, file, iSceneVideoGenerator, mediaProcessListener);
    }

    public final void getSceneCoverImage(SceneInfo sceneInfo, final File outputFile, ISceneVideoGenerator iSceneVideoGenerator, final MediaProcessListener mediaProcessListener) {
        Intrinsics.checkParameterIsNotNull(sceneInfo, "sceneInfo");
        Intrinsics.checkParameterIsNotNull(outputFile, "outputFile");
        ArrayList<AVClipInfoPack> arrayList = sceneInfo.videoClips;
        if (arrayList == null || arrayList.size() == 0) {
            if (mediaProcessListener != null) {
                MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener, false, 1, null);
                return;
            }
            return;
        }
        if (outputFile.exists()) {
            Utils.deleteDir(outputFile);
        }
        if (iSceneVideoGenerator != null) {
            String absolutePath = outputFile.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "outputFile.absolutePath");
            iSceneVideoGenerator.grabSceneCoverImage(sceneInfo, absolutePath, new ISceneVideoGenerator.OnGenerateCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.getSceneCoverImage.2
                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onProgress(int i) {
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onSuccess(String outputPath) {
                    Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    arrayList2.add(outputFile.getAbsolutePath());
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onSuccess(arrayList2);
                    }
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onError(Exception exc) {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                    }
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onCancel() {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onFailed(true);
                    }
                }
            });
        }
    }

    public static /* synthetic */ void getStoryCoverImage$default(SceneMediaProcessor sceneMediaProcessor, SceneDraft sceneDraft, File file, int i, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.getStoryCoverImage(sceneDraft, file, i, iSceneVideoGenerator, mediaProcessListener);
    }

    public final void getStoryCoverImage(SceneDraft sceneDraft, final File outputFile, int i, ISceneVideoGenerator iSceneVideoGenerator, final MediaProcessListener mediaProcessListener) {
        Intrinsics.checkParameterIsNotNull(sceneDraft, "sceneDraft");
        Intrinsics.checkParameterIsNotNull(outputFile, "outputFile");
        if (outputFile.exists()) {
            Utils.deleteDir(outputFile);
        }
        if (iSceneVideoGenerator != null) {
            String absolutePath = outputFile.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "outputFile.absolutePath");
            iSceneVideoGenerator.grabStoryCoverImage(sceneDraft, absolutePath, i, new ISceneVideoGenerator.OnGenerateCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.getStoryCoverImage.1
                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onProgress(int i2) {
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onSuccess(String outputPath) {
                    Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
                    ArrayList<String> arrayList = new ArrayList<>();
                    arrayList.add(outputFile.getAbsolutePath());
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onSuccess(arrayList);
                    }
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onError(Exception exc) {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                    }
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onCancel() {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onFailed(true);
                    }
                }
            });
        }
    }

    public final MediaEditingConfig getPreviewMedia(AVClipInfoPack videoClip, AVClipInfoPack aVClipInfoPack, File outputFile, VideoManager videoManager, final MediaProcessListener mediaProcessListener) {
        Intrinsics.checkParameterIsNotNull(videoClip, "videoClip");
        Intrinsics.checkParameterIsNotNull(outputFile, "outputFile");
        Intrinsics.checkParameterIsNotNull(videoManager, "videoManager");
        if (outputFile.exists()) {
            Utils.deleteDir(outputFile);
        }
        ArrayList arrayList = new ArrayList();
        if (aVClipInfoPack != null) {
            AVClipInfoPack aVClipInfoPackCopy = aVClipInfoPack.copy();
            Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPackCopy, "it.copy()");
            if (aVClipInfoPack.getInputFile() != null) {
                File inputFile = aVClipInfoPack.getInputFile();
                if (inputFile == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                Intrinsics.checkExpressionValueIsNotNull(inputFile, "it.inputFile!!");
                String absolutePath = inputFile.getAbsolutePath();
                Intrinsics.checkExpressionValueIsNotNull(absolutePath, "it.inputFile!!.absolutePath");
                aVClipInfoPackCopy.hasAudioTrack = videoManager.fetchStreamInfoSync(absolutePath).aCodecType != null;
            }
            aVClipInfoPackCopy.startOffsetToMainTrackInMs += videoClip.trimStartInMs;
            arrayList.add(aVClipInfoPackCopy);
        }
        return VideoManager.encodeScenePreview$default(videoManager, videoClip, arrayList, outputFile, false, new IVideoServiceCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.getPreviewMedia.2
            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionStarted() {
                IVideoServiceCallback.DefaultImpls.onActionStarted(this);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(MediaEditingConfig newTask) {
                Intrinsics.checkParameterIsNotNull(newTask, "newTask");
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
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
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onProgress(f);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onVideoProcessed(String path) {
                Intrinsics.checkParameterIsNotNull(path, "path");
                IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                ArrayList<String> arrayList2 = new ArrayList<>();
                arrayList2.add(path);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onSuccess(arrayList2);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionCancelled() {
                IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onFailed(true);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionFailed(Exception exc) {
                IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                }
            }
        }, 8, null);
    }

    public final int getVideoSource(String mediaPath, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(mediaPath, "mediaPath");
        if (i2 != 2) {
            return 8;
        }
        if (i != 100) {
            return 1;
        }
        return Utils.isGifInData(mediaPath) ? 4 : 2;
    }

    public final AVClipInfoPack fillAudioClipMetadata(AVClipInfoPack audioClip, Sound sound, AssetCategory assetCategory) {
        Intrinsics.checkParameterIsNotNull(audioClip, "audioClip");
        if (sound != null) {
            audioClip.musicId = sound.id;
            audioClip.musicType = sound.type;
        }
        if (assetCategory != null) {
            audioClip.categoryId = assetCategory.id;
        }
        return audioClip;
    }

    public static /* synthetic */ void fillVideoMetadata$default(SceneMediaProcessor sceneMediaProcessor, AVClipInfoPack aVClipInfoPack, boolean z, StreamInfo streamInfo, int i, Object obj) {
        if ((i & 4) != 0) {
            streamInfo = null;
        }
        sceneMediaProcessor.fillVideoMetadata(aVClipInfoPack, z, streamInfo);
    }

    public final void fillVideoMetadata(AVClipInfoPack clip, boolean z, StreamInfo streamInfo) {
        float f;
        int i;
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        if (z) {
            clip.rawVideoWidth = 720;
            clip.rawVideoHeight = 1280;
            clip.frameRate = 20;
            clip.bitRate = 1000;
            float[] fArr = clip.targetRectInfo;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = 1.0f;
            fArr[3] = 1.0f;
        } else if (streamInfo != null) {
            int i2 = streamInfo.rotate;
            clip.rawVideoWidth = (i2 == 90 || i2 == 270) ? streamInfo.height : streamInfo.width;
            int i3 = streamInfo.rotate;
            clip.rawVideoHeight = (i3 == 90 || i3 == 270) ? streamInfo.width : streamInfo.height;
            clip.frameRate = streamInfo.fps;
            clip.bitRate = streamInfo.bitrateInKbps;
        } else {
            int rotateAngle = clip.getRotateAngle();
            if (rotateAngle == 0 || rotateAngle == 180) {
                f = clip.rawVideoWidth;
                i = clip.rawVideoHeight;
            } else {
                f = clip.rawVideoHeight;
                i = clip.rawVideoWidth;
            }
            float f2 = f / i;
            if (f2 < 0.5625f) {
                float[] fArr2 = clip.targetRectInfo;
                float f3 = 720;
                fArr2[0] = ((720 - r14) / 2) / f3;
                fArr2[1] = 0.0f;
                fArr2[2] = ((int) (f2 * 1280)) / f3;
                fArr2[3] = 1.0f;
            } else if (f2 > 0.5625f) {
                float[] fArr3 = clip.targetRectInfo;
                fArr3[0] = 0.0f;
                float f4 = 1280;
                fArr3[1] = ((1280 - r14) / 2) / f4;
                fArr3[2] = 1.0f;
                fArr3[3] = ((int) (720 / f2)) / f4;
            }
        }
        CroppingData croppingData = clip.croppingData;
        if (croppingData != null) {
            if (croppingData.isDynamic()) {
                float[] fArr4 = clip.targetRectInfo;
                fArr4[0] = 0.0f;
                fArr4[1] = 0.0f;
                fArr4[2] = 1.0f;
                fArr4[3] = 1.0f;
            }
            float f5 = 720;
            float[] fArr5 = clip.targetRectInfo;
            float f6 = fArr5[2] * f5;
            float f7 = 1280;
            float f8 = fArr5[3] * f7;
            float f9 = fArr5[0] * f5;
            float f10 = fArr5[1] * f7;
            float f11 = croppingData.scale;
            if (f11 > 0.0f) {
                float f12 = (f11 - 1.0f) * f6;
                float f13 = (f11 - 1.0f) * f8;
                f6 += f12;
                f8 += f13;
                float f14 = 2;
                f9 -= f12 / f14;
                f10 -= f13 / f14;
            }
            float f15 = f9 + (croppingData.transformXRatio * f5);
            float f16 = f10 + ((-croppingData.transformYRatio) * f7);
            float[] fArr6 = clip.targetRectInfo;
            fArr6[0] = f15 / f5;
            fArr6[1] = f16 / f7;
            fArr6[2] = f6 / f5;
            fArr6[3] = f8 / f7;
        }
    }

    public final void onPreSceneDraft() {
        ArrayList<SceneInfo> arrayList = sceneInfoList;
        if (arrayList != null) {
            Iterator<SceneInfo> it = arrayList.iterator();
            while (it.hasNext()) {
                SceneInfo next = it.next();
                float f = 1.0f;
                if (!Intrinsics.areEqual(progressMap.get(next.id), 1.0f)) {
                    f = -1.0f;
                }
                next.currentSceneVideoProgress = f;
            }
        }
    }

    public final void clearListeners() {
        processListenerMap.clear();
    }

    public static /* synthetic */ MediaEditingConfig processScene$default(SceneMediaProcessor sceneMediaProcessor, SceneInfo sceneInfo, VideoManager videoManager, MediaProcessListener mediaProcessListener, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            mediaProcessListener = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        return sceneMediaProcessor.processScene(sceneInfo, videoManager, mediaProcessListener, z);
    }

    public final MediaEditingConfig processScene(final SceneInfo scene, VideoManager videoManager, final MediaProcessListener mediaProcessListener, boolean z) {
        MediaEditingConfig mediaEditingConfig;
        Intrinsics.checkParameterIsNotNull(scene, "scene");
        Intrinsics.checkParameterIsNotNull(videoManager, "videoManager");
        if (z && (mediaEditingConfig = inProcessingEditingConfigMap.get(scene.id)) != null && mediaEditingConfig.getRunningInBackground()) {
            videoManager.abort(mediaEditingConfig);
        }
        HashMap<String, Float> map = progressMap;
        String str = scene.id;
        Intrinsics.checkExpressionValueIsNotNull(str, "scene.id");
        map.put(str, Float.valueOf(0.0f));
        final File orgFile = SceneMediaProcessorKt.getOrgFile(scene);
        final File file = new File(orgFile.getParent(), FilesKt__UtilsKt.getNameWithoutExtension(orgFile) + "_tmp." + FilesKt__UtilsKt.getExtension(orgFile));
        if (file.exists()) {
            file.delete();
        }
        MediaEditingConfig mediaEditingConfig2 = inProcessingEditingConfigMap.get(scene.id);
        if (mediaEditingConfig2 != null) {
            videoManager.abort(mediaEditingConfig2);
        }
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        Iterator<AVClipInfoPack> it = scene.audioClips.iterator();
        while (it.hasNext()) {
            AVClipInfoPack next = it.next();
            if (next.streamInfo.aCodecType != null) {
                AVClipInfoPack aVClipInfoPackCopy = next.copy();
                Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPackCopy, "audioClip.copy()");
                aVClipInfoPackCopy.hasAudioTrack = true;
                arrayList.add(aVClipInfoPackCopy);
            }
        }
        scene.audioClips = arrayList;
        ArrayList<AVClipInfoPack> arrayList2 = scene.videoClips;
        Intrinsics.checkExpressionValueIsNotNull(arrayList2, "scene.videoClips");
        MediaEditingConfig mediaEditingConfigEncodeSceneOutput$default = VideoManager.encodeSceneOutput$default(videoManager, arrayList2, scene.audioClips, file, false, z, new IVideoServiceCallback() { // from class: com.narvii.video.services.SceneMediaProcessor$processScene$editingConfig$1
            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionStarted() {
                IVideoServiceCallback.DefaultImpls.onActionStarted(this);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(MediaEditingConfig newTask) {
                Intrinsics.checkParameterIsNotNull(newTask, "newTask");
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFrameBitmapLoaded(int i, Bitmap bitmap) {
                IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i, bitmap);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFramePicturesLoaded(int i, File file2) {
                IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i, file2);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onProgress(float f, String str2) {
                IVideoServiceCallback.DefaultImpls.onProgress(this, f, str2);
                SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onProgress(f);
                }
                HashMap mapAccess$getProgressMap$p = SceneMediaProcessor.access$getProgressMap$p(SceneMediaProcessor.INSTANCE);
                String str3 = scene.id;
                Intrinsics.checkExpressionValueIsNotNull(str3, "scene.id");
                mapAccess$getProgressMap$p.put(str3, Float.valueOf(f));
                SceneMediaProcessor.MediaProcessListener mediaProcessListener3 = (SceneMediaProcessor.MediaProcessListener) SceneMediaProcessor.access$getProcessListenerMap$p(SceneMediaProcessor.INSTANCE).get(scene.id);
                if (mediaProcessListener3 != null) {
                    mediaProcessListener3.onProgress(f);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onVideoProcessed(String path) {
                Intrinsics.checkParameterIsNotNull(path, "path");
                IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                File file2 = new File(path);
                if (!file2.exists()) {
                    onActionFailed(null);
                    return;
                }
                ArrayList<String> arrayList3 = new ArrayList<>();
                HashMap mapAccess$getProgressMap$p = SceneMediaProcessor.access$getProgressMap$p(SceneMediaProcessor.INSTANCE);
                String str2 = scene.id;
                Intrinsics.checkExpressionValueIsNotNull(str2, "scene.id");
                mapAccess$getProgressMap$p.put(str2, Float.valueOf(1.0f));
                if (orgFile.exists()) {
                    orgFile.delete();
                }
                file2.renameTo(orgFile);
                arrayList3.add(orgFile.getAbsolutePath());
                SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onSuccess(arrayList3);
                }
                SceneMediaProcessor.MediaProcessListener mediaProcessListener3 = (SceneMediaProcessor.MediaProcessListener) SceneMediaProcessor.access$getProcessListenerMap$p(SceneMediaProcessor.INSTANCE).get(scene.id);
                if (mediaProcessListener3 != null) {
                    mediaProcessListener3.onSuccess(arrayList3);
                }
                onFinish();
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionCancelled() {
                IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onFailed(true);
                }
                HashMap mapAccess$getProgressMap$p = SceneMediaProcessor.access$getProgressMap$p(SceneMediaProcessor.INSTANCE);
                String str2 = scene.id;
                Intrinsics.checkExpressionValueIsNotNull(str2, "scene.id");
                mapAccess$getProgressMap$p.put(str2, Float.valueOf(-1.0f));
                SceneMediaProcessor.MediaProcessListener mediaProcessListener3 = (SceneMediaProcessor.MediaProcessListener) SceneMediaProcessor.access$getProcessListenerMap$p(SceneMediaProcessor.INSTANCE).get(scene.id);
                if (mediaProcessListener3 != null) {
                    mediaProcessListener3.onFailed(true);
                }
                if (file.exists()) {
                    file.delete();
                }
                onFinish();
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionFailed(Exception exc) {
                IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    SceneMediaProcessor.MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                }
                HashMap mapAccess$getProgressMap$p = SceneMediaProcessor.access$getProgressMap$p(SceneMediaProcessor.INSTANCE);
                String str2 = scene.id;
                Intrinsics.checkExpressionValueIsNotNull(str2, "scene.id");
                mapAccess$getProgressMap$p.put(str2, Float.valueOf(-1.0f));
                SceneMediaProcessor.MediaProcessListener mediaProcessListener3 = (SceneMediaProcessor.MediaProcessListener) SceneMediaProcessor.access$getProcessListenerMap$p(SceneMediaProcessor.INSTANCE).get(scene.id);
                if (mediaProcessListener3 != null) {
                    SceneMediaProcessor.MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener3, false, 1, null);
                }
                if (file.exists()) {
                    file.delete();
                }
                onFinish();
            }

            private final void onFinish() {
                SceneMediaProcessor.access$getInProcessingEditingConfigMap$p(SceneMediaProcessor.INSTANCE).remove(scene.id);
            }
        }, 8, null);
        if (mediaEditingConfigEncodeSceneOutput$default != null) {
            mediaEditingConfigEncodeSceneOutput$default.setRunningInBackground(z);
            HashMap<String, MediaEditingConfig> map2 = inProcessingEditingConfigMap;
            String str2 = scene.id;
            Intrinsics.checkExpressionValueIsNotNull(str2, "scene.id");
            map2.put(str2, mediaEditingConfigEncodeSceneOutput$default);
        }
        return mediaEditingConfigEncodeSceneOutput$default;
    }

    public static /* synthetic */ void processScene$default(SceneMediaProcessor sceneMediaProcessor, SceneInfo sceneInfo, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            mediaProcessListener = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        sceneMediaProcessor.processScene(sceneInfo, iSceneVideoGenerator, mediaProcessListener, z);
    }

    public final void processScene(final SceneInfo scene, ISceneVideoGenerator iSceneVideoGenerator, final MediaProcessListener mediaProcessListener, boolean z) {
        Intrinsics.checkParameterIsNotNull(scene, "scene");
        HashMap<String, Float> map = progressMap;
        String str = scene.id;
        Intrinsics.checkExpressionValueIsNotNull(str, "scene.id");
        map.put(str, Float.valueOf(0.0f));
        final File orgFile = SceneMediaProcessorKt.getOrgFile(scene);
        final File file = new File(orgFile.getParent(), FilesKt__UtilsKt.getNameWithoutExtension(orgFile) + "_tmp." + FilesKt__UtilsKt.getExtension(orgFile));
        if (file.exists()) {
            file.delete();
        }
        if (iSceneVideoGenerator != null) {
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "tmpOrgFile.absolutePath");
            iSceneVideoGenerator.generateSceneVideo(scene, absolutePath, new ISceneVideoGenerator.OnGenerateCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.processScene.2
                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onSuccess(String outputPath) {
                    Intrinsics.checkParameterIsNotNull(outputPath, "outputPath");
                    File file2 = new File(outputPath);
                    if (!file2.exists()) {
                        onError(null);
                        return;
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    HashMap mapAccess$getProgressMap$p = SceneMediaProcessor.access$getProgressMap$p(SceneMediaProcessor.INSTANCE);
                    String str2 = scene.id;
                    Intrinsics.checkExpressionValueIsNotNull(str2, "scene.id");
                    mapAccess$getProgressMap$p.put(str2, Float.valueOf(1.0f));
                    if (orgFile.exists()) {
                        orgFile.delete();
                    }
                    file2.renameTo(orgFile);
                    arrayList.add(orgFile.getAbsolutePath());
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onSuccess(arrayList);
                    }
                    MediaProcessListener mediaProcessListener3 = (MediaProcessListener) SceneMediaProcessor.access$getProcessListenerMap$p(SceneMediaProcessor.INSTANCE).get(scene.id);
                    if (mediaProcessListener3 != null) {
                        mediaProcessListener3.onSuccess(arrayList);
                    }
                    onFinish();
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onError(Exception exc) {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                    }
                    HashMap mapAccess$getProgressMap$p = SceneMediaProcessor.access$getProgressMap$p(SceneMediaProcessor.INSTANCE);
                    String str2 = scene.id;
                    Intrinsics.checkExpressionValueIsNotNull(str2, "scene.id");
                    mapAccess$getProgressMap$p.put(str2, Float.valueOf(-1.0f));
                    MediaProcessListener mediaProcessListener3 = (MediaProcessListener) SceneMediaProcessor.access$getProcessListenerMap$p(SceneMediaProcessor.INSTANCE).get(scene.id);
                    if (mediaProcessListener3 != null) {
                        MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener3, false, 1, null);
                    }
                    if (file.exists()) {
                        file.delete();
                    }
                    onFinish();
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onProgress(int i) {
                    float f = i / 100.0f;
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onProgress(f);
                    }
                    HashMap mapAccess$getProgressMap$p = SceneMediaProcessor.access$getProgressMap$p(SceneMediaProcessor.INSTANCE);
                    String str2 = scene.id;
                    Intrinsics.checkExpressionValueIsNotNull(str2, "scene.id");
                    mapAccess$getProgressMap$p.put(str2, Float.valueOf(f));
                    MediaProcessListener mediaProcessListener3 = (MediaProcessListener) SceneMediaProcessor.access$getProcessListenerMap$p(SceneMediaProcessor.INSTANCE).get(scene.id);
                    if (mediaProcessListener3 != null) {
                        mediaProcessListener3.onProgress(f);
                    }
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onCancel() {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onFailed(true);
                    }
                    HashMap mapAccess$getProgressMap$p = SceneMediaProcessor.access$getProgressMap$p(SceneMediaProcessor.INSTANCE);
                    String str2 = scene.id;
                    Intrinsics.checkExpressionValueIsNotNull(str2, "scene.id");
                    mapAccess$getProgressMap$p.put(str2, Float.valueOf(-1.0f));
                    MediaProcessListener mediaProcessListener3 = (MediaProcessListener) SceneMediaProcessor.access$getProcessListenerMap$p(SceneMediaProcessor.INSTANCE).get(scene.id);
                    if (mediaProcessListener3 != null) {
                        mediaProcessListener3.onFailed(true);
                    }
                    if (file.exists()) {
                        file.delete();
                    }
                    onFinish();
                }

                private final void onFinish() {
                    SceneMediaProcessor.access$getInProcessingEditingConfigMap$p(SceneMediaProcessor.INSTANCE).remove(scene.id);
                }
            }, false);
        }
    }

    public static /* synthetic */ void processScene$default(SceneMediaProcessor sceneMediaProcessor, NVContext nVContext, SceneInfo sceneInfo, VideoManager videoManager, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, boolean z, int i, Object obj) {
        if ((i & 16) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.processScene(nVContext, sceneInfo, videoManager, iSceneVideoGenerator, mediaProcessListener, (i & 32) != 0 ? false : z);
    }

    public final void processScene(NVContext ctx, SceneInfo scene, VideoManager videoManager, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, boolean z) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(scene, "scene");
        Iterator<AVClipInfoPack> it = scene.videoClips.iterator();
        while (it.hasNext()) {
            AVClipInfoPack next = it.next();
            CroppingData croppingData = next.croppingData;
            Double.compare(next.speed, 1.0d);
            if (!Utils.isJPG(next.inputPath) && !Utils.isPNG(next.inputPath)) {
                Utils.isBMP(next.inputPath);
            }
        }
        if (NVApplication.isBasedOnMeishe()) {
            processScene(scene, iSceneVideoGenerator, mediaProcessListener, z);
        } else if (videoManager != null) {
            processScene(scene, videoManager, mediaProcessListener, z);
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    public final ArrayList<MediaEditingConfig> processStory(NVContext ctx, ArrayList<SceneInfo> sceneInfoList2, AVClipInfoPack aVClipInfoPack, VideoManager videoManager, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener) {
        String str;
        float f;
        int i;
        int i2;
        ArrayList<String> arrayList;
        String str2;
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(sceneInfoList2, "sceneInfoList");
        Intrinsics.checkParameterIsNotNull(videoManager, "videoManager");
        sceneInfoList = sceneInfoList2;
        ArrayList<String> arrayList2 = new ArrayList<>();
        storyProcessFailureFlag = false;
        completedTaskCount = 0;
        Iterator<SceneInfo> it = sceneInfoList2.iterator();
        while (true) {
            str = "scene.id";
            if (!it.hasNext()) {
                break;
            }
            SceneInfo next = it.next();
            arrayList2.add(next.outputUrl);
            if (progressMap.containsKey(next.id)) {
                HashMap<String, Float> map = progressMap;
                String str3 = next.id;
                Intrinsics.checkExpressionValueIsNotNull(str3, "scene.id");
                float f2 = next.currentSceneVideoProgress;
                Float fValueOf = progressMap.get(next.id);
                if (fValueOf == null) {
                    fValueOf = Float.valueOf(-1.0f);
                }
                map.put(str3, Float.valueOf(Math.max(f2, fValueOf.floatValue())));
            } else {
                HashMap<String, Float> map2 = progressMap;
                String str4 = next.id;
                Intrinsics.checkExpressionValueIsNotNull(str4, "scene.id");
                map2.put(str4, Float.valueOf(next.currentSceneVideoProgress == 1.0f ? 1.0f : -1.0f));
            }
        }
        if (iSceneVideoGenerator != null) {
            iSceneVideoGenerator.prepareSceneList(sceneInfoList2);
        }
        int size = sceneInfoList2.size();
        int i3 = 0;
        while (i3 < size) {
            SceneInfo sceneInfo = sceneInfoList2.get(i3);
            Intrinsics.checkExpressionValueIsNotNull(sceneInfo, "sceneInfoList[index]");
            SceneInfo sceneInfo2 = sceneInfo;
            Float f3 = progressMap.get(sceneInfo2.id);
            float fFloatValue = f3 != null ? f3.floatValue() : -1.0f;
            if (fFloatValue != 1.0f) {
                i = i3;
                i2 = size;
                String str5 = str;
                arrayList = arrayList2;
                if (fFloatValue == -1.0f || fFloatValue == 0.0f) {
                    processScene$default(this, ctx, sceneInfo2, videoManager, iSceneVideoGenerator, obtainProcessListenerImpl(sceneInfoList2, arrayList, aVClipInfoPack, videoManager, mediaProcessListener), false, 32, null);
                    str2 = str5;
                } else {
                    HashMap<String, MediaProcessListener> map3 = processListenerMap;
                    String str6 = sceneInfo2.id;
                    Intrinsics.checkExpressionValueIsNotNull(str6, str5);
                    str2 = str5;
                    map3.put(str6, obtainProcessListenerImpl(sceneInfoList2, arrayList, aVClipInfoPack, videoManager, mediaProcessListener));
                }
            } else if (SceneMediaProcessorKt.getOrgFile(sceneInfo2).exists()) {
                completedTaskCount++;
                if (completedTaskCount >= sceneInfoList2.size()) {
                    if (aVClipInfoPack == null) {
                        copySceneOrgFileToOutputFile(sceneInfoList2, arrayList2, mediaProcessListener);
                    } else {
                        stepIntoBGMMixing(sceneInfoList2, aVClipInfoPack, arrayList2, videoManager, mediaProcessListener);
                    }
                }
                i = i3;
                i2 = size;
                str2 = str;
                arrayList = arrayList2;
            } else {
                HashMap<String, Float> map4 = progressMap;
                String str7 = sceneInfo2.id;
                Intrinsics.checkExpressionValueIsNotNull(str7, str);
                map4.put(str7, Float.valueOf(f));
                sceneInfo2.currentSceneVideoProgress = f;
                i = i3;
                i2 = size;
                arrayList = arrayList2;
                processScene$default(this, ctx, sceneInfo2, videoManager, iSceneVideoGenerator, obtainProcessListenerImpl(sceneInfoList2, arrayList2, aVClipInfoPack, videoManager, mediaProcessListener), false, 32, null);
                str2 = str;
            }
            i3 = i + 1;
            str = str2;
            size = i2;
            arrayList2 = arrayList;
            f = -1.0f;
        }
        ArrayList<MediaEditingConfig> arrayList3 = new ArrayList<>();
        arrayList3.addAll(inProcessingEditingConfigMap.values());
        return arrayList3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void copySceneOrgFileToOutputFile(final ArrayList<SceneInfo> arrayList, final ArrayList<String> arrayList2, final MediaProcessListener mediaProcessListener) {
        new Thread(new Runnable() { // from class: com.narvii.video.services.SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1
            @Override // java.lang.Runnable
            public final void run() throws IOException {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    Object obj = arrayList.get(i);
                    Intrinsics.checkExpressionValueIsNotNull(obj, "sceneInfoList[index]");
                    File orgFile = SceneMediaProcessorKt.getOrgFile((SceneInfo) obj);
                    if (orgFile.exists()) {
                        FilesKt.copyTo$default(orgFile, new File((String) arrayList2.get(i)), true, 0, 4, null);
                    }
                }
                Utils.post(new Runnable() { // from class: com.narvii.video.services.SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1 sceneMediaProcessor$copySceneOrgFileToOutputFile$task$1 = SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1.this;
                        SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                        if (mediaProcessListener2 != null) {
                            mediaProcessListener2.onSuccess(arrayList2);
                        }
                    }
                });
            }
        }).start();
    }

    static /* synthetic */ void stepIntoBGMMixing$default(SceneMediaProcessor sceneMediaProcessor, ArrayList arrayList, AVClipInfoPack aVClipInfoPack, ArrayList arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener, int i, Object obj) {
        if ((i & 16) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.stepIntoBGMMixing(arrayList, aVClipInfoPack, arrayList2, videoManager, mediaProcessListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stepIntoBGMMixing(ArrayList<SceneInfo> arrayList, AVClipInfoPack aVClipInfoPack, ArrayList<String> arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener) {
        ArrayList<AVClipInfoPack> arrayList3 = new ArrayList<>();
        Iterator<SceneInfo> it = arrayList.iterator();
        while (true) {
            boolean z = true;
            if (it.hasNext()) {
                SceneInfo scene = it.next();
                AVClipInfoPack aVClipInfoPack2 = new AVClipInfoPack();
                Intrinsics.checkExpressionValueIsNotNull(scene, "scene");
                aVClipInfoPack2.inputPath = SceneMediaProcessorKt.getOrgFile(scene).getAbsolutePath();
                String str = aVClipInfoPack2.inputPath;
                Intrinsics.checkExpressionValueIsNotNull(str, "clip.inputPath");
                StreamInfo streamInfoFetchStreamInfoSync = videoManager.fetchStreamInfoSync(str);
                int i = streamInfoFetchStreamInfoSync.durationInMs;
                aVClipInfoPack2.visibleDurationInMs = i;
                aVClipInfoPack2.orgDurationInMs = i;
                aVClipInfoPack2.hasAudioTrack = streamInfoFetchStreamInfoSync.aCodecType != null;
                if (streamInfoFetchStreamInfoSync.vCodecType == null) {
                    z = false;
                }
                aVClipInfoPack2.hasVideoTrack = z;
                arrayList3.add(aVClipInfoPack2);
            } else {
                aVClipInfoPack.hasAudioTrack = true;
                mixBGM_stage1(arrayList3, aVClipInfoPack, arrayList2, videoManager, mediaProcessListener);
                return;
            }
        }
    }

    static /* synthetic */ void mixBGM_stage1$default(SceneMediaProcessor sceneMediaProcessor, ArrayList arrayList, AVClipInfoPack aVClipInfoPack, ArrayList arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener, int i, Object obj) {
        if ((i & 16) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.mixBGM_stage1(arrayList, aVClipInfoPack, arrayList2, videoManager, mediaProcessListener);
    }

    private final void mixBGM_stage1(final ArrayList<AVClipInfoPack> arrayList, AVClipInfoPack aVClipInfoPack, final ArrayList<String> arrayList2, final VideoManager videoManager, final MediaProcessListener mediaProcessListener) {
        final Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
        ref$FloatRef.element = 0.5f;
        final File file = new File(videoManager.getTmpFileFolder(), "mixed_audio_tmp.mp4");
        ArrayList<AVClipInfoPack> arrayList3 = new ArrayList<>();
        Iterator<AVClipInfoPack> it = arrayList.iterator();
        int iTrimmedDurationInMs = 0;
        while (it.hasNext()) {
            AVClipInfoPack aVClipInfoPackCopy = it.next().copy();
            Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPackCopy, "media.copy()");
            aVClipInfoPackCopy.startOffsetToMainTrackInMs = iTrimmedDurationInMs;
            iTrimmedDurationInMs += aVClipInfoPackCopy.trimmedDurationInMs();
            aVClipInfoPackCopy.trackVolume = 1.0f - aVClipInfoPack.trackVolume;
            arrayList3.add(aVClipInfoPackCopy);
        }
        if (mediaProcessListener != null) {
            mediaProcessListener.onProgress(ref$FloatRef.element);
        }
        inProcessingGlobalMusicMixingTask = videoManager.mixBGM_Stage1(arrayList3, aVClipInfoPack, file, new IVideoServiceCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.mixBGM_stage1.1
            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionStarted() {
                IVideoServiceCallback.DefaultImpls.onActionStarted(this);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFrameBitmapLoaded(int i, Bitmap bitmap) {
                IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i, bitmap);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFramePicturesLoaded(int i, File file2) {
                IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i, file2);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onProgress(float f, String str) {
                IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onProgress(Math.min(ref$FloatRef.element + (f / 4.0f), 0.75f));
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionCancelled() {
                IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
                SceneMediaProcessor.inProcessingGlobalMusicMixingTask = null;
                file.delete();
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onFailed(true);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionFailed(Exception exc) {
                IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
                SceneMediaProcessor.inProcessingGlobalMusicMixingTask = null;
                file.delete();
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onVideoProcessed(String path) {
                Intrinsics.checkParameterIsNotNull(path, "path");
                IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
                SceneMediaProcessor.inProcessingGlobalMusicMixingTask = null;
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onProgress(0.75f);
                }
                SceneMediaProcessor.INSTANCE.mixBGM_stage2(arrayList, file, arrayList2, videoManager, mediaProcessListener);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(MediaEditingConfig newTask) {
                Intrinsics.checkParameterIsNotNull(newTask, "newTask");
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
                SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
                SceneMediaProcessor.inProcessingGlobalMusicMixingTask = newTask;
            }
        });
    }

    static /* synthetic */ void mixBGM_stage2$default(SceneMediaProcessor sceneMediaProcessor, ArrayList arrayList, File file, ArrayList arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener, int i, Object obj) {
        if ((i & 16) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.mixBGM_stage2(arrayList, file, arrayList2, videoManager, mediaProcessListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void mixBGM_stage2(ArrayList<AVClipInfoPack> arrayList, File file, ArrayList<String> arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener) {
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        int i = 0;
        ref$IntRef.element = 0;
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = false;
        HashMap map = new HashMap();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            AVClipInfoPack aVClipInfoPack = arrayList.get(i2);
            Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack, "sceneMediaList[index]");
            AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
            AVClipInfoPack aVClipInfoPack3 = new AVClipInfoPack();
            aVClipInfoPack3.inputPath = file.getAbsolutePath();
            aVClipInfoPack3.trimStartInMs = i;
            aVClipInfoPack3.trimEndInMs = aVClipInfoPack2.trimmedDurationInMs() + i;
            int iTrimmedDurationInMs = i + aVClipInfoPack2.trimmedDurationInMs();
            ArrayList<SceneInfo> arrayList3 = sceneInfoList;
            if (arrayList3 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            SceneInfo sceneInfo = arrayList3.get(i2);
            Intrinsics.checkExpressionValueIsNotNull(sceneInfo, "sceneInfoList!![index]");
            SceneInfo sceneInfo2 = sceneInfo;
            Ref$IntRef ref$IntRef2 = ref$IntRef;
            MediaEditingConfig mediaEditingConfigMixBGM_Stage2 = videoManager.mixBGM_Stage2(aVClipInfoPack2, aVClipInfoPack3, new File(arrayList2.get(i2)), i2, new SceneMediaProcessor$mixBGM_stage2$task$1(ref$BooleanRef, map, sceneInfo2, videoManager, mediaProcessListener, ref$IntRef, arrayList, arrayList2, file));
            if (sceneInfoList != null && mediaEditingConfigMixBGM_Stage2 != null) {
                HashMap<String, MediaEditingConfig> map2 = inProcessingEditingConfigMap;
                String str = sceneInfo2.id;
                Intrinsics.checkExpressionValueIsNotNull(str, "sceneInfo.id");
                map2.put(str, mediaEditingConfigMixBGM_Stage2);
            }
            i2++;
            i = iTrimmedDurationInMs;
            ref$IntRef = ref$IntRef2;
        }
    }

    public final void terminateAll(VideoManager videoManager) {
        Intrinsics.checkParameterIsNotNull(videoManager, "videoManager");
        INSTANCE.terminateAll(videoManager, null);
    }

    public final void terminateAll(VideoManager videoManager, ISceneVideoGenerator iSceneVideoGenerator) {
        Intrinsics.checkParameterIsNotNull(videoManager, "videoManager");
        ArrayList<MediaEditingConfig> arrayList = new ArrayList<>();
        arrayList.addAll(inProcessingEditingConfigMap.values());
        videoManager.abortAll(arrayList);
        MediaEditingConfig mediaEditingConfig = inProcessingGlobalMusicMixingTask;
        if (mediaEditingConfig != null) {
            videoManager.abort(mediaEditingConfig);
        }
        inProcessingEditingConfigMap.clear();
        if (iSceneVideoGenerator != null) {
            iSceneVideoGenerator.abort();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getPathIndexInSceneList(ArrayList<SceneInfo> arrayList, String str) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(str, arrayList.get(i).outputUrl)) {
                return i;
            }
        }
        return -1;
    }

    /* compiled from: SceneMediaProcessor.kt */
    /* renamed from: com.narvii.video.services.SceneMediaProcessor$obtainProcessListenerImpl$1, reason: invalid class name and case insensitive filesystem */
    public static final class C11481 implements MediaProcessListener {
        final /* synthetic */ MediaProcessListener $externalCallback;
        final /* synthetic */ AVClipInfoPack $globalMusic;
        final /* synthetic */ ArrayList $outputPathList;
        final /* synthetic */ ArrayList $sceneInfoList;
        final /* synthetic */ VideoManager $videoManager;

        C11481(ArrayList arrayList, AVClipInfoPack aVClipInfoPack, ArrayList arrayList2, MediaProcessListener mediaProcessListener, VideoManager videoManager) {
            this.$sceneInfoList = arrayList;
            this.$globalMusic = aVClipInfoPack;
            this.$outputPathList = arrayList2;
            this.$externalCallback = mediaProcessListener;
            this.$videoManager = videoManager;
        }

        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
        public void onProgress(float f) {
            if (SceneMediaProcessor.access$getStoryProcessFailureFlag$p(SceneMediaProcessor.INSTANCE)) {
                return;
            }
            onOverallProgress();
        }

        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
        public void onSuccess(ArrayList<String> outputList) {
            Intrinsics.checkParameterIsNotNull(outputList, "outputList");
            if (SceneMediaProcessor.access$getStoryProcessFailureFlag$p(SceneMediaProcessor.INSTANCE)) {
                return;
            }
            if (outputList.isEmpty()) {
                MediaProcessListener.DefaultImpls.onFailed$default(this, false, 1, null);
                return;
            }
            String str = outputList.get(0);
            Intrinsics.checkExpressionValueIsNotNull(str, "outputList[0]");
            int pathIndexInSceneList = SceneMediaProcessor.INSTANCE.getPathIndexInSceneList(this.$sceneInfoList, str);
            int size = this.$sceneInfoList.size();
            if (pathIndexInSceneList >= 0 && size > pathIndexInSceneList) {
                ((SceneInfo) this.$sceneInfoList.get(pathIndexInSceneList)).currentSceneVideoProgress = 1.0f;
            }
            SceneMediaProcessor.completedTaskCount = SceneMediaProcessor.access$getCompletedTaskCount$p(SceneMediaProcessor.INSTANCE) + 1;
            if (SceneMediaProcessor.access$getCompletedTaskCount$p(SceneMediaProcessor.INSTANCE) >= this.$sceneInfoList.size()) {
                AVClipInfoPack aVClipInfoPack = this.$globalMusic;
                if (aVClipInfoPack == null) {
                    SceneMediaProcessor.INSTANCE.copySceneOrgFileToOutputFile(this.$sceneInfoList, this.$outputPathList, this.$externalCallback);
                } else {
                    SceneMediaProcessor.INSTANCE.stepIntoBGMMixing(this.$sceneInfoList, aVClipInfoPack, this.$outputPathList, this.$videoManager, this.$externalCallback);
                }
            }
        }

        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
        public void onFailed(boolean z) {
            if (SceneMediaProcessor.access$getStoryProcessFailureFlag$p(SceneMediaProcessor.INSTANCE)) {
                return;
            }
            SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
            SceneMediaProcessor.storyProcessFailureFlag = true;
            Utils.post(new Runnable() { // from class: com.narvii.video.services.SceneMediaProcessor$obtainProcessListenerImpl$1$onFailed$1
                @Override // java.lang.Runnable
                public final void run() {
                    SceneMediaProcessor.INSTANCE.terminateAll(this.this$0.$videoManager);
                }
            });
            MediaProcessListener mediaProcessListener = this.$externalCallback;
            if (mediaProcessListener != null) {
                mediaProcessListener.onFailed(z);
            }
        }

        private final void onOverallProgress() {
            float fMax = 0.0f;
            for (Float progress : SceneMediaProcessor.access$getProgressMap$p(SceneMediaProcessor.INSTANCE).values()) {
                Intrinsics.checkExpressionValueIsNotNull(progress, "progress");
                fMax += Math.max(progress.floatValue(), 0.0f);
            }
            float fMin = Math.min(this.$sceneInfoList.size(), fMax);
            MediaProcessListener mediaProcessListener = this.$externalCallback;
            if (mediaProcessListener != null) {
                mediaProcessListener.onProgress(fMin / (this.$sceneInfoList.size() * (this.$globalMusic == null ? 1 : 2)));
            }
        }
    }

    private final MediaProcessListener obtainProcessListenerImpl(ArrayList<SceneInfo> arrayList, ArrayList<String> arrayList2, AVClipInfoPack aVClipInfoPack, VideoManager videoManager, MediaProcessListener mediaProcessListener) {
        return new C11481(arrayList, aVClipInfoPack, arrayList2, mediaProcessListener, videoManager);
    }
}
