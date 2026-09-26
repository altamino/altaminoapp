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
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.video.interfaces.ISceneVideoGenerator;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.io.n;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class SceneMediaProcessor {
    private static int completedTaskCount;

    @Nullable
    private static g7.d inProcessingGlobalMusicMixingTask;

    @Nullable
    private static ArrayList<SceneInfo> sceneInfoList;
    private static boolean storyProcessFailureFlag;

    @NotNull
    public static final SceneMediaProcessor INSTANCE = new SceneMediaProcessor();

    @NotNull
    private static final HashMap<String, Float> progressMap = new HashMap<>();

    @NotNull
    private static final HashMap<String, MediaProcessListener> processListenerMap = new HashMap<>();

    @NotNull
    private static final HashMap<String, g7.d> inProcessingEditingConfigMap = new HashMap<>();

    public interface MediaProcessListener {

        public static final class DefaultImpls {
            public static void onFailed(@NotNull MediaProcessListener mediaProcessListener, boolean z6) {
            }

            public static void onProgress(@NotNull MediaProcessListener mediaProcessListener, float f) {
            }

            public static void onSuccess(@NotNull MediaProcessListener mediaProcessListener, @NotNull ArrayList<String> outputList) {
                t.j(outputList, "outputList");
            }

            public static /* synthetic */ void onFailed$default(MediaProcessListener mediaProcessListener, boolean z6, int i10, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onFailed");
                }
                if ((i10 & 1) != 0) {
                    z6 = false;
                }
                mediaProcessListener.onFailed(z6);
            }
        }

        void onFailed(boolean z6);

        void onProgress(float f);

        void onSuccess(@NotNull ArrayList<String> arrayList);
    }

    /* JADX INFO: renamed from: com.narvii.video.services.SceneMediaProcessor$obtainProcessListenerImpl$1, reason: invalid class name and case insensitive filesystem */
    public static final class C05691 implements MediaProcessListener {
        final /* synthetic */ MediaProcessListener $externalCallback;
        final /* synthetic */ AVClipInfoPack $globalMusic;
        final /* synthetic */ ArrayList<String> $outputPathList;
        final /* synthetic */ ArrayList<SceneInfo> $sceneInfoList;
        final /* synthetic */ VideoManager $videoManager;

        C05691(ArrayList<SceneInfo> arrayList, AVClipInfoPack aVClipInfoPack, ArrayList<String> arrayList2, MediaProcessListener mediaProcessListener, VideoManager videoManager) {
            this.$sceneInfoList = arrayList;
            this.$globalMusic = aVClipInfoPack;
            this.$outputPathList = arrayList2;
            this.$externalCallback = mediaProcessListener;
            this.$videoManager = videoManager;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFailed$lambda$0(VideoManager videoManager) {
            t.j(videoManager, "$videoManager");
            SceneMediaProcessor.INSTANCE.terminateAll(videoManager);
        }

        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
        public void onSuccess(@NotNull ArrayList<String> outputList) {
            t.j(outputList, "outputList");
            if (SceneMediaProcessor.storyProcessFailureFlag) {
                return;
            }
            if (outputList.isEmpty()) {
                MediaProcessListener.DefaultImpls.onFailed$default(this, false, 1, null);
                return;
            }
            String str = outputList.get(0);
            t.i(str, "get(...)");
            SceneMediaProcessor sceneMediaProcessor = SceneMediaProcessor.INSTANCE;
            int pathIndexInSceneList = sceneMediaProcessor.getPathIndexInSceneList(this.$sceneInfoList, str);
            if (pathIndexInSceneList >= 0 && pathIndexInSceneList < this.$sceneInfoList.size()) {
                this.$sceneInfoList.get(pathIndexInSceneList).currentSceneVideoProgress = 1.0f;
            }
            SceneMediaProcessor.completedTaskCount++;
            if (SceneMediaProcessor.completedTaskCount >= this.$sceneInfoList.size()) {
                AVClipInfoPack aVClipInfoPack = this.$globalMusic;
                if (aVClipInfoPack == null) {
                    sceneMediaProcessor.copySceneOrgFileToOutputFile(this.$sceneInfoList, this.$outputPathList, this.$externalCallback);
                } else {
                    sceneMediaProcessor.stepIntoBGMMixing(this.$sceneInfoList, aVClipInfoPack, this.$outputPathList, this.$videoManager, this.$externalCallback);
                }
            }
        }

        private final void onOverallProgress() {
            int i10;
            float fMax = 0.0f;
            for (Float f : SceneMediaProcessor.progressMap.values()) {
                t.g(f);
                fMax += Math.max(f.floatValue(), 0.0f);
            }
            float fMin = Math.min(this.$sceneInfoList.size(), fMax);
            MediaProcessListener mediaProcessListener = this.$externalCallback;
            if (mediaProcessListener != null) {
                float size = this.$sceneInfoList.size();
                if (this.$globalMusic == null) {
                    i10 = 1;
                } else {
                    i10 = 2;
                }
                mediaProcessListener.onProgress(fMin / (size * i10));
            }
        }

        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
        public void onFailed(boolean z6) {
            if (SceneMediaProcessor.storyProcessFailureFlag) {
                return;
            }
            SceneMediaProcessor.storyProcessFailureFlag = true;
            final VideoManager videoManager = this.$videoManager;
            Utils.post(new Runnable() { // from class: com.narvii.video.services.l
                @Override // java.lang.Runnable
                public final void run() {
                    SceneMediaProcessor.C05691.onFailed$lambda$0(videoManager);
                }
            });
            MediaProcessListener mediaProcessListener = this.$externalCallback;
            if (mediaProcessListener != null) {
                mediaProcessListener.onFailed(z6);
            }
        }

        @Override // com.narvii.video.services.SceneMediaProcessor.MediaProcessListener
        public void onProgress(float f) {
            if (SceneMediaProcessor.storyProcessFailureFlag) {
                return;
            }
            onOverallProgress();
        }
    }

    public static /* synthetic */ g7.d getSceneCoverImage$default(SceneMediaProcessor sceneMediaProcessor, AVClipInfoPack aVClipInfoPack, File file, VideoManager videoManager, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            mediaProcessListener = null;
        }
        return sceneMediaProcessor.getSceneCoverImage(aVClipInfoPack, file, videoManager, iSceneVideoGenerator, mediaProcessListener);
    }

    public static /* synthetic */ g7.d processScene$default(SceneMediaProcessor sceneMediaProcessor, SceneInfo sceneInfo, VideoManager videoManager, MediaProcessListener mediaProcessListener, boolean z6, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            mediaProcessListener = null;
        }
        if ((i10 & 8) != 0) {
            z6 = false;
        }
        return sceneMediaProcessor.processScene(sceneInfo, videoManager, mediaProcessListener, z6);
    }

    @Nullable
    public final g7.d getSceneCoverImage(@NotNull AVClipInfoPack videoClip, @NotNull final File outputFile, @NotNull VideoManager videoManager, @Nullable ISceneVideoGenerator iSceneVideoGenerator, @Nullable final MediaProcessListener mediaProcessListener) {
        t.j(videoClip, "videoClip");
        t.j(outputFile, "outputFile");
        t.j(videoManager, "videoManager");
        if (videoClip.getInputFile() == null) {
            if (mediaProcessListener != null) {
                MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener, false, 1, null);
            }
            return null;
        }
        if (outputFile.exists()) {
            Utils.deleteDir(outputFile);
        }
        return videoManager.getCoverImage(videoClip, outputFile, (int) (((double) videoClip.trimStartInMs) + (((double) videoClip.trimmedDurationInMs()) * 0.3d)), (88 & 8) != 0 ? -2 : 0, (88 & 16) != 0 ? -2 : 0, (88 & 32) != 0 ? null : new IVideoServiceCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.getSceneCoverImage.1
            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionCancelled() {
                IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onFailed(true);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionFailed(@Nullable Exception exc) {
                IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionStarted() {
                IVideoServiceCallback.DefaultImpls.onActionStarted(this);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(@NotNull g7.d dVar) {
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, dVar);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFrameBitmapLoaded(int i10, @Nullable Bitmap bitmap) {
                IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i10, bitmap);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFramePicturesLoaded(int i10, @Nullable File file) {
                IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i10, file);
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(outputFile.getAbsolutePath());
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onSuccess(arrayList);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onProgress(float f, @Nullable String str) {
                IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onVideoProcessed(@NotNull String str) {
                IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, str);
            }
        }, (88 & 64) != 0 ? null : null, (88 & 128) != 0 ? false : true);
    }

    @Nullable
    public final g7.d processScene(@NotNull final SceneInfo scene, @NotNull VideoManager videoManager, @Nullable final MediaProcessListener mediaProcessListener, boolean z6) {
        g7.d dVar;
        t.j(scene, "scene");
        t.j(videoManager, "videoManager");
        if (z6 && (dVar = inProcessingEditingConfigMap.get(scene.id)) != null && dVar.z()) {
            videoManager.abort(dVar);
        }
        HashMap<String, Float> map = progressMap;
        String id = scene.id;
        t.i(id, "id");
        map.put(id, Float.valueOf(0.0f));
        final File orgFile = SceneMediaProcessorKt.getOrgFile(scene);
        final File file = new File(orgFile.getParent(), n.s(orgFile) + "_tmp." + n.r(orgFile));
        if (file.exists()) {
            file.delete();
        }
        g7.d dVar2 = inProcessingEditingConfigMap.get(scene.id);
        if (dVar2 != null) {
            videoManager.abort(dVar2);
        }
        ArrayList<AVClipInfoPack> arrayList = new ArrayList<>();
        for (AVClipInfoPack aVClipInfoPack : scene.audioClips) {
            if (aVClipInfoPack.streamInfo.aCodecType != null) {
                AVClipInfoPack aVClipInfoPackCopy = aVClipInfoPack.copy();
                t.i(aVClipInfoPackCopy, "copy(...)");
                aVClipInfoPackCopy.hasAudioTrack = true;
                arrayList.add(aVClipInfoPackCopy);
            }
        }
        scene.audioClips = arrayList;
        ArrayList<AVClipInfoPack> videoClips = scene.videoClips;
        t.i(videoClips, "videoClips");
        g7.d dVarEncodeSceneOutput$default = VideoManager.encodeSceneOutput$default(videoManager, videoClips, scene.audioClips, file, false, z6, new IVideoServiceCallback() { // from class: com.narvii.video.services.SceneMediaProcessor$processScene$editingConfig$1
            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onVideoProcessed(@NotNull String path) {
                t.j(path, "path");
                IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                File file2 = new File(path);
                if (!file2.exists()) {
                    onActionFailed(null);
                    return;
                }
                ArrayList<String> arrayList2 = new ArrayList<>();
                HashMap map2 = SceneMediaProcessor.progressMap;
                String id2 = scene.id;
                t.i(id2, "id");
                map2.put(id2, Float.valueOf(1.0f));
                if (orgFile.exists()) {
                    orgFile.delete();
                }
                file2.renameTo(orgFile);
                arrayList2.add(orgFile.getAbsolutePath());
                SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onSuccess(arrayList2);
                }
                SceneMediaProcessor.MediaProcessListener mediaProcessListener3 = (SceneMediaProcessor.MediaProcessListener) SceneMediaProcessor.processListenerMap.get(scene.id);
                if (mediaProcessListener3 != null) {
                    mediaProcessListener3.onSuccess(arrayList2);
                }
                onFinish();
            }

            private final void onFinish() {
                SceneMediaProcessor.inProcessingEditingConfigMap.remove(scene.id);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionCancelled() {
                IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onFailed(true);
                }
                HashMap map2 = SceneMediaProcessor.progressMap;
                String id2 = scene.id;
                t.i(id2, "id");
                map2.put(id2, Float.valueOf(-1.0f));
                SceneMediaProcessor.MediaProcessListener mediaProcessListener3 = (SceneMediaProcessor.MediaProcessListener) SceneMediaProcessor.processListenerMap.get(scene.id);
                if (mediaProcessListener3 != null) {
                    mediaProcessListener3.onFailed(true);
                }
                if (file.exists()) {
                    file.delete();
                }
                onFinish();
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionFailed(@Nullable Exception exc) {
                IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    SceneMediaProcessor.MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                }
                HashMap map2 = SceneMediaProcessor.progressMap;
                String id2 = scene.id;
                t.i(id2, "id");
                map2.put(id2, Float.valueOf(-1.0f));
                SceneMediaProcessor.MediaProcessListener mediaProcessListener3 = (SceneMediaProcessor.MediaProcessListener) SceneMediaProcessor.processListenerMap.get(scene.id);
                if (mediaProcessListener3 != null) {
                    SceneMediaProcessor.MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener3, false, 1, null);
                }
                if (file.exists()) {
                    file.delete();
                }
                onFinish();
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionStarted() {
                IVideoServiceCallback.DefaultImpls.onActionStarted(this);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(@NotNull g7.d dVar3) {
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, dVar3);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFrameBitmapLoaded(int i10, @Nullable Bitmap bitmap) {
                IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i10, bitmap);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onFramePicturesLoaded(int i10, @Nullable File file2) {
                IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i10, file2);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onProgress(float f, @Nullable String str) {
                IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
                SceneMediaProcessor.MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onProgress(f);
                }
                HashMap map2 = SceneMediaProcessor.progressMap;
                String id2 = scene.id;
                t.i(id2, "id");
                map2.put(id2, Float.valueOf(f));
                SceneMediaProcessor.MediaProcessListener mediaProcessListener3 = (SceneMediaProcessor.MediaProcessListener) SceneMediaProcessor.processListenerMap.get(scene.id);
                if (mediaProcessListener3 != null) {
                    mediaProcessListener3.onProgress(f);
                }
            }
        }, 8, null);
        if (dVarEncodeSceneOutput$default != null) {
            dVarEncodeSceneOutput$default.K(z6);
            HashMap<String, g7.d> map2 = inProcessingEditingConfigMap;
            String id2 = scene.id;
            t.i(id2, "id");
            map2.put(id2, dVarEncodeSceneOutput$default);
        }
        return dVarEncodeSceneOutput$default;
    }

    public final void terminateAll(@NotNull VideoManager videoManager) {
        t.j(videoManager, "videoManager");
        terminateAll(videoManager, null);
    }

    private final void addMediaProcessListener(String str, MediaProcessListener mediaProcessListener) {
        processListenerMap.put(str, mediaProcessListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void copySceneOrgFileToOutputFile(final ArrayList<SceneInfo> arrayList, final ArrayList<String> arrayList2, final MediaProcessListener mediaProcessListener) {
        new Thread(new Runnable() { // from class: com.narvii.video.services.h
            @Override // java.lang.Runnable
            public final void run() {
                SceneMediaProcessor.copySceneOrgFileToOutputFile$lambda$7(arrayList, arrayList2, mediaProcessListener);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void copySceneOrgFileToOutputFile$lambda$7(ArrayList sceneInfoList2, final ArrayList outputPathList, final MediaProcessListener mediaProcessListener) {
        t.j(sceneInfoList2, "$sceneInfoList");
        t.j(outputPathList, "$outputPathList");
        int size = sceneInfoList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = sceneInfoList2.get(i10);
            t.i(obj, "get(...)");
            File orgFile = SceneMediaProcessorKt.getOrgFile((SceneInfo) obj);
            if (orgFile.exists()) {
                n.p(orgFile, new File((String) outputPathList.get(i10)), true, 0, 4, null);
            }
        }
        Utils.post(new Runnable() { // from class: com.narvii.video.services.i
            @Override // java.lang.Runnable
            public final void run() {
                SceneMediaProcessor.copySceneOrgFileToOutputFile$lambda$7$lambda$6(mediaProcessListener, outputPathList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void copySceneOrgFileToOutputFile$lambda$7$lambda$6(MediaProcessListener mediaProcessListener, ArrayList outputPathList) {
        t.j(outputPathList, "$outputPathList");
        if (mediaProcessListener != null) {
            mediaProcessListener.onSuccess(outputPathList);
        }
    }

    public static /* synthetic */ void fillVideoMetadata$default(SceneMediaProcessor sceneMediaProcessor, AVClipInfoPack aVClipInfoPack, boolean z6, StreamInfo streamInfo, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            streamInfo = null;
        }
        sceneMediaProcessor.fillVideoMetadata(aVClipInfoPack, z6, streamInfo);
    }

    public static /* synthetic */ void getSceneCoverImage$default(SceneMediaProcessor sceneMediaProcessor, SceneInfo sceneInfo, File file, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.getSceneCoverImage(sceneInfo, file, iSceneVideoGenerator, mediaProcessListener);
    }

    public static /* synthetic */ void getStoryCoverImage$default(SceneMediaProcessor sceneMediaProcessor, SceneDraft sceneDraft, File file, int i10, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.getStoryCoverImage(sceneDraft, file, i10, iSceneVideoGenerator, mediaProcessListener);
    }

    private final void mixBGM_stage1(final ArrayList<AVClipInfoPack> arrayList, AVClipInfoPack aVClipInfoPack, final ArrayList<String> arrayList2, final VideoManager videoManager, final MediaProcessListener mediaProcessListener) {
        final m0 m0Var = new m0();
        m0Var.element = 0.5f;
        final File file = new File(videoManager.getTmpFileFolder(), "mixed_audio_tmp.mp4");
        ArrayList<AVClipInfoPack> arrayList3 = new ArrayList<>();
        Iterator<AVClipInfoPack> it = arrayList.iterator();
        int iTrimmedDurationInMs = 0;
        while (it.hasNext()) {
            AVClipInfoPack aVClipInfoPackCopy = it.next().copy();
            t.i(aVClipInfoPackCopy, "copy(...)");
            aVClipInfoPackCopy.startOffsetToMainTrackInMs = iTrimmedDurationInMs;
            iTrimmedDurationInMs += aVClipInfoPackCopy.trimmedDurationInMs();
            aVClipInfoPackCopy.trackVolume = 1.0f - aVClipInfoPack.trackVolume;
            arrayList3.add(aVClipInfoPackCopy);
        }
        if (mediaProcessListener != null) {
            mediaProcessListener.onProgress(m0Var.element);
        }
        inProcessingGlobalMusicMixingTask = videoManager.mixBGM_Stage1(arrayList3, aVClipInfoPack, file, new IVideoServiceCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.mixBGM_stage1.1
            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(@NotNull g7.d newTask) {
                t.j(newTask, "newTask");
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, newTask);
                SceneMediaProcessor.inProcessingGlobalMusicMixingTask = newTask;
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onVideoProcessed(@NotNull String path) {
                t.j(path, "path");
                IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                SceneMediaProcessor.inProcessingGlobalMusicMixingTask = null;
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onProgress(0.75f);
                }
                SceneMediaProcessor.INSTANCE.mixBGM_stage2(arrayList, file, arrayList2, videoManager, mediaProcessListener);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionCancelled() {
                IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                SceneMediaProcessor.inProcessingGlobalMusicMixingTask = null;
                file.delete();
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onFailed(true);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionFailed(@Nullable Exception exc) {
                IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                SceneMediaProcessor.inProcessingGlobalMusicMixingTask = null;
                file.delete();
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
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
            public void onFramePicturesLoaded(int i10, @Nullable File file2) {
                IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i10, file2);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onProgress(float f, @Nullable String str) {
                IVideoServiceCallback.DefaultImpls.onProgress(this, f, str);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onProgress(Math.min(m0Var.element + (f / 4.0f), 0.75f));
                }
            }
        });
    }

    static /* synthetic */ void mixBGM_stage1$default(SceneMediaProcessor sceneMediaProcessor, ArrayList arrayList, AVClipInfoPack aVClipInfoPack, ArrayList arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.mixBGM_stage1(arrayList, aVClipInfoPack, arrayList2, videoManager, mediaProcessListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void mixBGM_stage2(ArrayList<AVClipInfoPack> arrayList, File file, ArrayList<String> arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener) {
        n0 n0Var = new n0();
        k0 k0Var = new k0();
        HashMap map = new HashMap();
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            AVClipInfoPack aVClipInfoPack = arrayList.get(i11);
            t.i(aVClipInfoPack, "get(...)");
            AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
            AVClipInfoPack aVClipInfoPack3 = new AVClipInfoPack();
            aVClipInfoPack3.inputPath = file.getAbsolutePath();
            aVClipInfoPack3.trimStartInMs = i10;
            aVClipInfoPack3.trimEndInMs = aVClipInfoPack2.trimmedDurationInMs() + i10;
            int iTrimmedDurationInMs = i10 + aVClipInfoPack2.trimmedDurationInMs();
            ArrayList<SceneInfo> arrayList3 = sceneInfoList;
            t.g(arrayList3);
            SceneInfo sceneInfo = arrayList3.get(i11);
            t.i(sceneInfo, "get(...)");
            SceneInfo sceneInfo2 = sceneInfo;
            n0 n0Var2 = n0Var;
            g7.d dVarMixBGM_Stage2 = videoManager.mixBGM_Stage2(aVClipInfoPack2, aVClipInfoPack3, new File(arrayList2.get(i11)), i11, new SceneMediaProcessor$mixBGM_stage2$task$1(k0Var, map, sceneInfo2, mediaProcessListener, videoManager, n0Var, arrayList, arrayList2, file));
            if (sceneInfoList != null && dVarMixBGM_Stage2 != null) {
                HashMap<String, g7.d> map2 = inProcessingEditingConfigMap;
                String id = sceneInfo2.id;
                t.i(id, "id");
                map2.put(id, dVarMixBGM_Stage2);
            }
            i11++;
            i10 = iTrimmedDurationInMs;
            n0Var = n0Var2;
        }
    }

    static /* synthetic */ void mixBGM_stage2$default(SceneMediaProcessor sceneMediaProcessor, ArrayList arrayList, File file, ArrayList arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.mixBGM_stage2(arrayList, file, arrayList2, videoManager, mediaProcessListener);
    }

    private final MediaProcessListener obtainProcessListenerImpl(ArrayList<SceneInfo> arrayList, ArrayList<String> arrayList2, AVClipInfoPack aVClipInfoPack, VideoManager videoManager, MediaProcessListener mediaProcessListener) {
        return new C05691(arrayList, aVClipInfoPack, arrayList2, mediaProcessListener, videoManager);
    }

    public static /* synthetic */ void processScene$default(SceneMediaProcessor sceneMediaProcessor, SceneInfo sceneInfo, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, boolean z6, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            mediaProcessListener = null;
        }
        if ((i10 & 8) != 0) {
            z6 = false;
        }
        sceneMediaProcessor.processScene(sceneInfo, iSceneVideoGenerator, mediaProcessListener, z6);
    }

    private final void removeMediaProcessListener(String str) {
        processListenerMap.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stepIntoBGMMixing(ArrayList<SceneInfo> arrayList, AVClipInfoPack aVClipInfoPack, ArrayList<String> arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener) {
        ArrayList<AVClipInfoPack> arrayList3 = new ArrayList<>();
        Iterator<SceneInfo> it = arrayList.iterator();
        while (true) {
            boolean z6 = true;
            if (!it.hasNext()) {
                aVClipInfoPack.hasAudioTrack = true;
                mixBGM_stage1(arrayList3, aVClipInfoPack, arrayList2, videoManager, mediaProcessListener);
                return;
            }
            SceneInfo next = it.next();
            AVClipInfoPack aVClipInfoPack2 = new AVClipInfoPack();
            t.g(next);
            String inputPath = SceneMediaProcessorKt.getOrgFile(next).getAbsolutePath();
            aVClipInfoPack2.inputPath = inputPath;
            t.i(inputPath, "inputPath");
            StreamInfo streamInfoFetchStreamInfoSync = videoManager.fetchStreamInfoSync(inputPath);
            int i10 = streamInfoFetchStreamInfoSync.durationInMs;
            aVClipInfoPack2.visibleDurationInMs = i10;
            aVClipInfoPack2.orgDurationInMs = i10;
            aVClipInfoPack2.hasAudioTrack = streamInfoFetchStreamInfoSync.aCodecType != null;
            if (streamInfoFetchStreamInfoSync.vCodecType == null) {
                z6 = false;
            }
            aVClipInfoPack2.hasVideoTrack = z6;
            arrayList3.add(aVClipInfoPack2);
        }
    }

    static /* synthetic */ void stepIntoBGMMixing$default(SceneMediaProcessor sceneMediaProcessor, ArrayList arrayList, AVClipInfoPack aVClipInfoPack, ArrayList arrayList2, VideoManager videoManager, MediaProcessListener mediaProcessListener, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            mediaProcessListener = null;
        }
        sceneMediaProcessor.stepIntoBGMMixing(arrayList, aVClipInfoPack, arrayList2, videoManager, mediaProcessListener);
    }

    public final void clearListeners() {
        processListenerMap.clear();
    }

    @NotNull
    public final AVClipInfoPack fillAudioClipMetadata(@NotNull AVClipInfoPack audioClip, @Nullable Sound sound, @Nullable AssetCategory assetCategory) {
        t.j(audioClip, "audioClip");
        if (sound != null) {
            audioClip.musicId = sound.id;
            audioClip.musicType = sound.type;
        }
        if (assetCategory != null) {
            audioClip.categoryId = assetCategory.id;
        }
        return audioClip;
    }

    public final void fillVideoMetadata(@NotNull AVClipInfoPack clip, boolean z6, @Nullable StreamInfo streamInfo) {
        float f;
        int i10;
        t.j(clip, "clip");
        if (z6) {
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
            int i11 = streamInfo.rotate;
            clip.rawVideoWidth = (i11 == 90 || i11 == 270) ? streamInfo.height : streamInfo.width;
            clip.rawVideoHeight = (i11 == 90 || i11 == 270) ? streamInfo.width : streamInfo.height;
            clip.frameRate = streamInfo.fps;
            clip.bitRate = streamInfo.bitrateInKbps;
        } else {
            int rotateAngle = clip.getRotateAngle();
            if (rotateAngle == 0 || rotateAngle == 180) {
                f = clip.rawVideoWidth;
                i10 = clip.rawVideoHeight;
            } else {
                f = clip.rawVideoHeight;
                i10 = clip.rawVideoWidth;
            }
            float f6 = f / i10;
            if (f6 < 0.5625f) {
                int i12 = (int) (f6 * 1280);
                float[] fArr2 = clip.targetRectInfo;
                fArr2[0] = ((720 - i12) / 2) / 720.0f;
                fArr2[1] = 0.0f;
                fArr2[2] = i12 / 720.0f;
                fArr2[3] = 1.0f;
            } else if (f6 > 0.5625f) {
                int i13 = (int) (720 / f6);
                float[] fArr3 = clip.targetRectInfo;
                fArr3[0] = 0.0f;
                fArr3[1] = ((1280 - i13) / 2) / 1280.0f;
                fArr3[2] = 1.0f;
                fArr3[3] = i13 / 1280.0f;
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
            float f7 = 720;
            float[] fArr5 = clip.targetRectInfo;
            float f10 = fArr5[2] * f7;
            float f11 = 1280;
            float f12 = fArr5[3] * f11;
            float f13 = fArr5[0] * f7;
            float f14 = fArr5[1] * f11;
            float f15 = croppingData.scale;
            if (f15 > 0.0f) {
                float f16 = (f15 - 1.0f) * f10;
                float f17 = (f15 - 1.0f) * f12;
                f10 += f16;
                f12 += f17;
                float f18 = 2;
                f13 -= f16 / f18;
                f14 -= f17 / f18;
            }
            float f19 = f13 + (croppingData.transformXRatio * f7);
            float f20 = f14 + ((-croppingData.transformYRatio) * f11);
            fArr5[0] = f19 / f7;
            fArr5[1] = f20 / f11;
            fArr5[2] = f10 / f7;
            fArr5[3] = f12 / f11;
        }
    }

    public final void getStoryCoverImage(@NotNull SceneDraft sceneDraft, @NotNull final File outputFile, int i10, @Nullable ISceneVideoGenerator iSceneVideoGenerator, @Nullable final MediaProcessListener mediaProcessListener) {
        t.j(sceneDraft, "sceneDraft");
        t.j(outputFile, "outputFile");
        if (outputFile.exists()) {
            Utils.deleteDir(outputFile);
        }
        if (iSceneVideoGenerator != null) {
            String absolutePath = outputFile.getAbsolutePath();
            t.i(absolutePath, "getAbsolutePath(...)");
            iSceneVideoGenerator.grabStoryCoverImage(sceneDraft, absolutePath, i10, new ISceneVideoGenerator.OnGenerateCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.getStoryCoverImage.1
                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onProgress(int i11) {
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onCancel() {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onFailed(true);
                    }
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onError(@Nullable Exception exc) {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                    }
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onSuccess(@NotNull String outputPath) {
                    t.j(outputPath, "outputPath");
                    ArrayList<String> arrayList = new ArrayList<>();
                    arrayList.add(outputFile.getAbsolutePath());
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onSuccess(arrayList);
                    }
                }
            });
        }
    }

    public final int getVideoSource(@NotNull String mediaPath, int i10, int i11) {
        t.j(mediaPath, "mediaPath");
        if (i11 != 2) {
            return 8;
        }
        if (i10 != 100) {
            return 1;
        }
        return Utils.isGifInData(mediaPath) ? 4 : 2;
    }

    public final void onPreSceneDraft() {
        ArrayList<SceneInfo> arrayList = sceneInfoList;
        if (arrayList != null) {
            for (SceneInfo sceneInfo : arrayList) {
                float f = 1.0f;
                if (!t.c(progressMap.get(sceneInfo.id), 1.0f)) {
                    f = -1.0f;
                }
                sceneInfo.currentSceneVideoProgress = f;
            }
        }
    }

    @NotNull
    public final ArrayList<g7.d> processStory(@NotNull NVContext ctx, @NotNull ArrayList<SceneInfo> sceneInfoList2, @Nullable AVClipInfoPack aVClipInfoPack, @NotNull VideoManager videoManager, @Nullable ISceneVideoGenerator iSceneVideoGenerator, @Nullable MediaProcessListener mediaProcessListener) {
        String str;
        float f;
        int i10;
        int i11;
        float f6;
        ArrayList<String> arrayList;
        String str2;
        t.j(ctx, "ctx");
        t.j(sceneInfoList2, "sceneInfoList");
        t.j(videoManager, "videoManager");
        sceneInfoList = sceneInfoList2;
        ArrayList<String> arrayList2 = new ArrayList<>();
        storyProcessFailureFlag = false;
        completedTaskCount = 0;
        Iterator<SceneInfo> it = sceneInfoList2.iterator();
        while (true) {
            str = "id";
            f = -1.0f;
            if (!it.hasNext()) {
                break;
            }
            SceneInfo next = it.next();
            arrayList2.add(next.outputUrl);
            HashMap<String, Float> map = progressMap;
            if (map.containsKey(next.id)) {
                String id = next.id;
                t.i(id, "id");
                float f7 = next.currentSceneVideoProgress;
                Float fValueOf = map.get(next.id);
                if (fValueOf == null) {
                    fValueOf = Float.valueOf(-1.0f);
                }
                map.put(id, Float.valueOf(Math.max(f7, fValueOf.floatValue())));
            } else {
                String id2 = next.id;
                t.i(id2, "id");
                map.put(id2, Float.valueOf(next.currentSceneVideoProgress != 1.0f ? -1.0f : 1.0f));
            }
        }
        if (iSceneVideoGenerator != null) {
            iSceneVideoGenerator.prepareSceneList(sceneInfoList2);
        }
        int size = sceneInfoList2.size();
        int i12 = 0;
        while (i12 < size) {
            SceneInfo sceneInfo = sceneInfoList2.get(i12);
            t.i(sceneInfo, "get(...)");
            SceneInfo sceneInfo2 = sceneInfo;
            HashMap<String, Float> map2 = progressMap;
            Float f10 = map2.get(sceneInfo2.id);
            float fFloatValue = f10 == null ? f : f10.floatValue();
            if (fFloatValue != 1.0f) {
                i10 = i12;
                i11 = size;
                f6 = f;
                String str3 = str;
                arrayList = arrayList2;
                if (fFloatValue == f6 || fFloatValue == 0.0f) {
                    processScene$default(this, ctx, sceneInfo2, videoManager, iSceneVideoGenerator, obtainProcessListenerImpl(sceneInfoList2, arrayList, aVClipInfoPack, videoManager, mediaProcessListener), false, 32, null);
                    str2 = str3;
                } else {
                    HashMap<String, MediaProcessListener> map3 = processListenerMap;
                    String str4 = sceneInfo2.id;
                    t.i(str4, str3);
                    str2 = str3;
                    map3.put(str4, obtainProcessListenerImpl(sceneInfoList2, arrayList, aVClipInfoPack, videoManager, mediaProcessListener));
                }
            } else if (SceneMediaProcessorKt.getOrgFile(sceneInfo2).exists()) {
                int i13 = completedTaskCount + 1;
                completedTaskCount = i13;
                if (i13 >= sceneInfoList2.size()) {
                    if (aVClipInfoPack == null) {
                        copySceneOrgFileToOutputFile(sceneInfoList2, arrayList2, mediaProcessListener);
                    } else {
                        stepIntoBGMMixing(sceneInfoList2, aVClipInfoPack, arrayList2, videoManager, mediaProcessListener);
                    }
                }
                i10 = i12;
                i11 = size;
                f6 = f;
                str2 = str;
                arrayList = arrayList2;
            } else {
                String str5 = sceneInfo2.id;
                t.i(str5, str);
                map2.put(str5, Float.valueOf(f));
                sceneInfo2.currentSceneVideoProgress = f;
                i10 = i12;
                i11 = size;
                f6 = f;
                arrayList = arrayList2;
                processScene$default(this, ctx, sceneInfo2, videoManager, iSceneVideoGenerator, obtainProcessListenerImpl(sceneInfoList2, arrayList2, aVClipInfoPack, videoManager, mediaProcessListener), false, 32, null);
                str2 = str;
            }
            i12 = i10 + 1;
            str = str2;
            size = i11;
            f = f6;
            arrayList2 = arrayList;
        }
        ArrayList<g7.d> arrayList3 = new ArrayList<>();
        arrayList3.addAll(inProcessingEditingConfigMap.values());
        return arrayList3;
    }

    public final void removeScene(@NotNull SceneInfo scene, @NotNull VideoManager videoManager) {
        t.j(scene, "scene");
        t.j(videoManager, "videoManager");
        scene.currentSceneVideoProgress = -1.0f;
        progressMap.remove(scene.id);
        processListenerMap.remove(scene.id);
        HashMap<String, g7.d> map = inProcessingEditingConfigMap;
        g7.d dVar = map.get(scene.id);
        if (dVar != null) {
            videoManager.abort(dVar);
            map.remove(scene.id);
        }
    }

    public final void terminateAll(@NotNull VideoManager videoManager, @Nullable ISceneVideoGenerator iSceneVideoGenerator) {
        t.j(videoManager, "videoManager");
        ArrayList<g7.d> arrayList = new ArrayList<>();
        HashMap<String, g7.d> map = inProcessingEditingConfigMap;
        arrayList.addAll(map.values());
        videoManager.abortAll(arrayList);
        g7.d dVar = inProcessingGlobalMusicMixingTask;
        if (dVar != null) {
            videoManager.abort(dVar);
        }
        map.clear();
        if (iSceneVideoGenerator != null) {
            iSceneVideoGenerator.abort();
        }
    }

    private SceneMediaProcessor() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getPathIndexInSceneList(ArrayList<SceneInfo> arrayList, String str) {
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (TextUtils.equals(str, arrayList.get(i10).outputUrl)) {
                return i10;
            }
        }
        return -1;
    }

    public static /* synthetic */ void processScene$default(SceneMediaProcessor sceneMediaProcessor, NVContext nVContext, SceneInfo sceneInfo, VideoManager videoManager, ISceneVideoGenerator iSceneVideoGenerator, MediaProcessListener mediaProcessListener, boolean z6, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            mediaProcessListener = null;
        }
        MediaProcessListener mediaProcessListener2 = mediaProcessListener;
        if ((i10 & 32) != 0) {
            z6 = false;
        }
        sceneMediaProcessor.processScene(nVContext, sceneInfo, videoManager, iSceneVideoGenerator, mediaProcessListener2, z6);
    }

    @Nullable
    public final g7.d getPreviewMedia(@NotNull AVClipInfoPack videoClip, @Nullable AVClipInfoPack aVClipInfoPack, @NotNull File outputFile, @NotNull VideoManager videoManager, @Nullable final MediaProcessListener mediaProcessListener) {
        boolean z6;
        t.j(videoClip, "videoClip");
        t.j(outputFile, "outputFile");
        t.j(videoManager, "videoManager");
        if (outputFile.exists()) {
            Utils.deleteDir(outputFile);
        }
        ArrayList arrayList = new ArrayList();
        if (aVClipInfoPack != null) {
            AVClipInfoPack aVClipInfoPackCopy = aVClipInfoPack.copy();
            t.i(aVClipInfoPackCopy, "copy(...)");
            if (aVClipInfoPack.getInputFile() != null) {
                File inputFile = aVClipInfoPack.getInputFile();
                t.g(inputFile);
                String absolutePath = inputFile.getAbsolutePath();
                t.i(absolutePath, "getAbsolutePath(...)");
                if (videoManager.fetchStreamInfoSync(absolutePath).aCodecType != null) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                aVClipInfoPackCopy.hasAudioTrack = z6;
            }
            aVClipInfoPackCopy.startOffsetToMainTrackInMs += videoClip.trimStartInMs;
            arrayList.add(aVClipInfoPackCopy);
        }
        return VideoManager.encodeScenePreview$default(videoManager, videoClip, arrayList, outputFile, false, new IVideoServiceCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.getPreviewMedia.2
            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onVideoProcessed(@NotNull String path) {
                t.j(path, "path");
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
            public void onActionFailed(@Nullable Exception exc) {
                IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                }
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onActionStarted() {
                IVideoServiceCallback.DefaultImpls.onActionStarted(this);
            }

            @Override // com.narvii.video.interfaces.IVideoServiceCallback
            public void onExecutingTaskChanged(@NotNull g7.d dVar) {
                IVideoServiceCallback.DefaultImpls.onExecutingTaskChanged(this, dVar);
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
                MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                if (mediaProcessListener2 != null) {
                    mediaProcessListener2.onProgress(f);
                }
            }
        }, 8, null);
    }

    public final void release(@NotNull VideoManager videoManager) {
        t.j(videoManager, "videoManager");
        processListenerMap.clear();
        progressMap.clear();
        for (g7.d dVar : inProcessingEditingConfigMap.values()) {
            t.g(dVar);
            videoManager.abort(dVar);
        }
        g7.d dVar2 = inProcessingGlobalMusicMixingTask;
        if (dVar2 != null) {
            videoManager.abort(dVar2);
        }
        inProcessingEditingConfigMap.clear();
        completedTaskCount = 0;
        storyProcessFailureFlag = false;
    }

    public final void getSceneCoverImage(@NotNull SceneInfo sceneInfo, @NotNull final File outputFile, @Nullable ISceneVideoGenerator iSceneVideoGenerator, @Nullable final MediaProcessListener mediaProcessListener) {
        t.j(sceneInfo, "sceneInfo");
        t.j(outputFile, "outputFile");
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
            t.i(absolutePath, "getAbsolutePath(...)");
            iSceneVideoGenerator.grabSceneCoverImage(sceneInfo, absolutePath, new ISceneVideoGenerator.OnGenerateCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.getSceneCoverImage.2
                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onProgress(int i10) {
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onCancel() {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onFailed(true);
                    }
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onError(@Nullable Exception exc) {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                    }
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onSuccess(@NotNull String outputPath) {
                    t.j(outputPath, "outputPath");
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    arrayList2.add(outputFile.getAbsolutePath());
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onSuccess(arrayList2);
                    }
                }
            });
        }
    }

    public final void processScene(@NotNull final SceneInfo scene, @Nullable ISceneVideoGenerator iSceneVideoGenerator, @Nullable final MediaProcessListener mediaProcessListener, boolean z6) {
        t.j(scene, "scene");
        HashMap<String, Float> map = progressMap;
        String id = scene.id;
        t.i(id, "id");
        map.put(id, Float.valueOf(0.0f));
        final File orgFile = SceneMediaProcessorKt.getOrgFile(scene);
        final File file = new File(orgFile.getParent(), n.s(orgFile) + "_tmp." + n.r(orgFile));
        if (file.exists()) {
            file.delete();
        }
        if (iSceneVideoGenerator != null) {
            String absolutePath = file.getAbsolutePath();
            t.i(absolutePath, "getAbsolutePath(...)");
            iSceneVideoGenerator.generateSceneVideo(scene, absolutePath, new ISceneVideoGenerator.OnGenerateCallback() { // from class: com.narvii.video.services.SceneMediaProcessor.processScene.2
                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onProgress(int i10) {
                    float f = i10 / 100.0f;
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onProgress(f);
                    }
                    HashMap map2 = SceneMediaProcessor.progressMap;
                    String id2 = scene.id;
                    t.i(id2, "id");
                    map2.put(id2, Float.valueOf(f));
                    MediaProcessListener mediaProcessListener3 = (MediaProcessListener) SceneMediaProcessor.processListenerMap.get(scene.id);
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
                    HashMap map2 = SceneMediaProcessor.progressMap;
                    String id2 = scene.id;
                    t.i(id2, "id");
                    map2.put(id2, Float.valueOf(-1.0f));
                    MediaProcessListener mediaProcessListener3 = (MediaProcessListener) SceneMediaProcessor.processListenerMap.get(scene.id);
                    if (mediaProcessListener3 != null) {
                        mediaProcessListener3.onFailed(true);
                    }
                    if (file.exists()) {
                        file.delete();
                    }
                    onFinish();
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onError(@Nullable Exception exc) {
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener2, false, 1, null);
                    }
                    HashMap map2 = SceneMediaProcessor.progressMap;
                    String id2 = scene.id;
                    t.i(id2, "id");
                    map2.put(id2, Float.valueOf(-1.0f));
                    MediaProcessListener mediaProcessListener3 = (MediaProcessListener) SceneMediaProcessor.processListenerMap.get(scene.id);
                    if (mediaProcessListener3 != null) {
                        MediaProcessListener.DefaultImpls.onFailed$default(mediaProcessListener3, false, 1, null);
                    }
                    if (file.exists()) {
                        file.delete();
                    }
                    onFinish();
                }

                @Override // com.narvii.video.interfaces.ISceneVideoGenerator.OnGenerateCallback
                public void onSuccess(@NotNull String outputPath) {
                    t.j(outputPath, "outputPath");
                    File file2 = new File(outputPath);
                    if (!file2.exists()) {
                        onError(null);
                        return;
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    HashMap map2 = SceneMediaProcessor.progressMap;
                    String id2 = scene.id;
                    t.i(id2, "id");
                    map2.put(id2, Float.valueOf(1.0f));
                    if (orgFile.exists()) {
                        orgFile.delete();
                    }
                    file2.renameTo(orgFile);
                    arrayList.add(orgFile.getAbsolutePath());
                    MediaProcessListener mediaProcessListener2 = mediaProcessListener;
                    if (mediaProcessListener2 != null) {
                        mediaProcessListener2.onSuccess(arrayList);
                    }
                    MediaProcessListener mediaProcessListener3 = (MediaProcessListener) SceneMediaProcessor.processListenerMap.get(scene.id);
                    if (mediaProcessListener3 != null) {
                        mediaProcessListener3.onSuccess(arrayList);
                    }
                    onFinish();
                }

                private final void onFinish() {
                    SceneMediaProcessor.inProcessingEditingConfigMap.remove(scene.id);
                }
            }, false);
        }
    }

    public final void processScene(@NotNull NVContext ctx, @NotNull SceneInfo scene, @Nullable VideoManager videoManager, @Nullable ISceneVideoGenerator iSceneVideoGenerator, @Nullable MediaProcessListener mediaProcessListener, boolean z6) {
        String str;
        StatisticsEventBuilder statisticsEventBuilderEvent;
        t.j(ctx, "ctx");
        t.j(scene, "scene");
        for (AVClipInfoPack aVClipInfoPack : scene.videoClips) {
            CroppingData croppingData = aVClipInfoPack.croppingData;
            Double.compare(aVClipInfoPack.speed, 1.0d);
            if (!Utils.isJPG(aVClipInfoPack.inputPath) && !Utils.isPNG(aVClipInfoPack.inputPath)) {
                Utils.isBMP(aVClipInfoPack.inputPath);
            }
        }
        if (NVApplication.isBasedOnMeishe()) {
            processScene(scene, iSceneVideoGenerator, mediaProcessListener, z6);
            str = "meishe";
        } else {
            t.g(videoManager);
            processScene(scene, videoManager, mediaProcessListener, z6);
            str = "ffmpeg";
        }
        StatisticsService statisticsService = (StatisticsService) ctx.getService("statistics");
        if (statisticsService == null || (statisticsEventBuilderEvent = statisticsService.event("Scene Compiling")) == null) {
            return;
        }
        statisticsEventBuilderEvent.param("tool", str);
    }
}
