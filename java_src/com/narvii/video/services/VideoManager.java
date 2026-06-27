package com.narvii.video.services;

import android.app.Activity;
import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.model.Sticker;
import com.narvii.util.Utils;
import com.narvii.util.services.TopActivityService;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.VideoManager;
import ffmpeg.base.IEditor;
import ffmpeg.base.IEditorBaseCallback;
import ffmpeg.base.IEditorExecuteCallback;
import ffmpeg.base.MediaEditingConfig;
import ffmpeg.base.NVEditor;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: VideoManager.kt */
/* loaded from: classes3.dex */
public final class VideoManager {
    private final ThreadPoolExecutor backgroundTaskExecutor;
    private final NVContext ctx;
    private final IEditor delegate;
    private final ThreadPoolExecutor foregroundTaskExecutor;
    private final HashMap<String, StickerInfoPack> installedStickerMap;
    private IInstallStickerCallback pageInstallStickerCallback;
    private final IEditor softwareDelegate;
    private final File tmpFileFolder;
    private final HashMap<String, IInstallStickerCallback> viewInstallStickerCallbackMap;

    /* compiled from: VideoManager.kt */
    public interface IFetchStreamInfoCallback {
        void onStreamInfoFetched(StreamInfo streamInfo);
    }

    /* compiled from: VideoManager.kt */
    public interface IInstallStickerCallback {
        void onStickerInstallFailed(Sticker sticker);

        void onStickerInstallStart(StickerInfoPack stickerInfoPack);

        void onStickerInstalled(StickerInfoPack stickerInfoPack);
    }

    public VideoManager(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.delegate = NVEditor.Companion.getNVEditor(this.ctx);
        NVEditor.Companion companion = NVEditor.Companion;
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        this.softwareDelegate = companion.getSoftwareNVEditor(context);
        this.foregroundTaskExecutor = Utils.createThreadPoolExecutor(Math.min(4, Utils.getCoreThreadCount() - 1), "Foreground_encoding");
        this.backgroundTaskExecutor = Utils.createThreadPoolExecutor(1, "Background_encoding");
        Context context2 = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "ctx.context");
        this.tmpFileFolder = new File(context2.getExternalCacheDir(), "video_tmp");
        this.installedStickerMap = new HashMap<>();
        this.viewInstallStickerCallbackMap = new HashMap<>();
        this.tmpFileFolder.mkdir();
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final File getTmpFileFolder() {
        return this.tmpFileFolder;
    }

    public final StreamInfo fetchStreamInfoSync(String input) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        return this.delegate.fetchStreamingInfo(input);
    }

    public final void fetchStreamInfo(final String input, final IFetchStreamInfoCallback callback) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.foregroundTaskExecutor.execute(new Runnable() { // from class: com.narvii.video.services.VideoManager.fetchStreamInfo.1
            @Override // java.lang.Runnable
            public final void run() {
                callback.onStreamInfoFetched(VideoManager.this.delegate.fetchStreamingInfo(input));
            }
        });
    }

    public static /* synthetic */ MediaEditingConfig simpleAVMix$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, List list, File file, IVideoServiceCallback iVideoServiceCallback, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.simpleAVMix(aVClipInfoPack, list, file, iVideoServiceCallback, (i & 16) != 0 ? false : z);
    }

    public final MediaEditingConfig simpleAVMix(AVClipInfoPack videoTrackClip, List<? extends AVClipInfoPack> audioTrackClips, final File output, final IVideoServiceCallback iVideoServiceCallback, boolean z) {
        Intrinsics.checkParameterIsNotNull(videoTrackClip, "videoTrackClip");
        Intrinsics.checkParameterIsNotNull(audioTrackClips, "audioTrackClips");
        Intrinsics.checkParameterIsNotNull(output, "output");
        if (videoTrackClip.getInputFile() == null) {
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
            return null;
        }
        MediaEditingConfig mediaEditingConfigBuild = new MediaEditingConfig.Companion.Builder(videoTrackClip, output, 128).additionalAudioInputList(audioTrackClips).build();
        mediaEditingConfigBuild.setForceSoftware(z);
        if (z) {
            this.softwareDelegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.simpleAVMix.1
                {
                    String str = null;
                    float f = 0.0f;
                    int i = 12;
                    DefaultConstructorMarker defaultConstructorMarker = null;
                }
            });
        } else {
            this.delegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.simpleAVMix.2
                {
                    String str = null;
                    float f = 0.0f;
                    int i = 12;
                    DefaultConstructorMarker defaultConstructorMarker = null;
                }
            });
        }
        return mediaEditingConfigBuild;
    }

    public final MediaEditingConfig cropVideo(AVClipInfoPack input, final File output, int i, int i2, final IVideoServiceCallback iVideoServiceCallback, final String str) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(output, "output");
        MediaEditingConfig mediaEditingConfigBuild = new MediaEditingConfig.Companion.Builder(input, output, 0, 4, (DefaultConstructorMarker) null).duration(i).startTime(i2).needProgressCallback(true).build();
        this.delegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output, str) { // from class: com.narvii.video.services.VideoManager.cropVideo.1
            {
                float f = 0.0f;
                int i3 = 8;
                DefaultConstructorMarker defaultConstructorMarker = null;
            }
        });
        return mediaEditingConfigBuild;
    }

    public static /* synthetic */ MediaEditingConfig concatVideo$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, File file, IVideoServiceCallback iVideoServiceCallback, int i, Object obj) {
        if ((i & 4) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.concatVideo(aVClipInfoPack, file, iVideoServiceCallback);
    }

    public final MediaEditingConfig concatVideo(AVClipInfoPack input, final File output, final IVideoServiceCallback iVideoServiceCallback) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(output, "output");
        MediaEditingConfig mediaEditingConfigBuild = new MediaEditingConfig.Companion.Builder(input, output, 4096).needProgressCallback(true).build();
        this.delegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.concatVideo.1
            {
                String str = null;
                float f = 0.0f;
                int i = 12;
                DefaultConstructorMarker defaultConstructorMarker = null;
            }
        });
        return mediaEditingConfigBuild;
    }

    public final MediaEditingConfig cropVideoByCopy(AVClipInfoPack input, final File output, int i, int i2, boolean z, final IVideoServiceCallback iVideoServiceCallback, boolean z2, boolean z3, final String str) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(output, "output");
        MediaEditingConfig.Companion.Builder builderStartTime = new MediaEditingConfig.Companion.Builder(input, output, 8).duration(i).startTime(i2);
        if (z2 && z3) {
            builderStartTime.forceVideoCodecCopy(true).forceAudioCodecCopy(true);
        } else if (z2) {
            builderStartTime.forceVideoCodecCopy(true).videoOnly(true);
        } else if (z3) {
            builderStartTime.forceAudioCodecCopy(true).audioOnly(true);
        }
        builderStartTime.needProgressCallback(true).dropNegativeTs(z);
        MediaEditingConfig mediaEditingConfigBuild = builderStartTime.build();
        this.delegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output, str) { // from class: com.narvii.video.services.VideoManager.cropVideoByCopy.1
            {
                float f = 0.0f;
                int i3 = 8;
                DefaultConstructorMarker defaultConstructorMarker = null;
            }
        });
        return mediaEditingConfigBuild;
    }

    public static /* synthetic */ MediaEditingConfig convertImg2Video$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, File file, IVideoServiceCallback iVideoServiceCallback, int i, Object obj) {
        if ((i & 4) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.convertImg2Video(aVClipInfoPack, file, iVideoServiceCallback);
    }

    public final MediaEditingConfig convertImg2Video(AVClipInfoPack input, final File output, final IVideoServiceCallback iVideoServiceCallback) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(output, "output");
        if (Utils.isBMP(input.inputPath) || Utils.isJPG(input.inputPath) || Utils.isPNG(input.inputPath)) {
            MediaEditingConfig mediaEditingConfigBuild = new MediaEditingConfig.Companion.Builder(input, output, 1024).build();
            this.delegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.convertImg2Video.1
                {
                    String str = null;
                    float f = 0.0f;
                    int i = 12;
                    DefaultConstructorMarker defaultConstructorMarker = null;
                }
            });
            return mediaEditingConfigBuild;
        }
        if (!Utils.isGifInData(input.inputPath)) {
            return null;
        }
        MediaEditingConfig mediaEditingConfigBuild2 = new MediaEditingConfig.Companion.Builder(input, output, 2048).build();
        this.delegate.execute(mediaEditingConfigBuild2, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.convertImg2Video.2
            {
                String str = null;
                float f = 0.0f;
                int i = 12;
                DefaultConstructorMarker defaultConstructorMarker = null;
            }
        });
        return mediaEditingConfigBuild2;
    }

    public static /* synthetic */ MediaEditingConfig encodeScenePreview$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, ArrayList arrayList, File file, boolean z, IVideoServiceCallback iVideoServiceCallback, int i, Object obj) {
        boolean z2 = (i & 8) != 0 ? false : z;
        if ((i & 16) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.encodeScenePreview(aVClipInfoPack, arrayList, file, z2, iVideoServiceCallback);
    }

    public final MediaEditingConfig encodeScenePreview(AVClipInfoPack videoClip, ArrayList<AVClipInfoPack> audioClips, final File output, boolean z, final IVideoServiceCallback iVideoServiceCallback) {
        Intrinsics.checkParameterIsNotNull(videoClip, "videoClip");
        Intrinsics.checkParameterIsNotNull(audioClips, "audioClips");
        Intrinsics.checkParameterIsNotNull(output, "output");
        if (videoClip.getInputFile() == null) {
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
            return null;
        }
        boolean z2 = videoClip.orgDurationInMs > 270000;
        if (z2) {
            Iterator<AVClipInfoPack> it = audioClips.iterator();
            while (it.hasNext()) {
                it.next().startOffsetToMainTrackInMs -= videoClip.trimStartInMs;
            }
        }
        MediaEditingConfig.Companion.Builder builderKeepFixedDimension = new MediaEditingConfig.Companion.Builder(videoClip, output, 32).additionalAudioInputList(audioClips).keepFixedDimension(z);
        if (z2) {
            builderKeepFixedDimension.startTime(videoClip.trimStartInMs).duration(Math.min(videoClip.trimmedDurationInMs(), 15000));
        }
        MediaEditingConfig mediaEditingConfigBuild = builderKeepFixedDimension.build();
        mediaEditingConfigBuild.setTrim(z2);
        mediaEditingConfigBuild.setTranscodeAudio(true);
        mediaEditingConfigBuild.setTranscodeVideo(z2);
        videoClip.previewStartInMs = z2 ? 0 : videoClip.trimStartInMs;
        this.delegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.encodeScenePreview.1
            {
                String str = null;
                float f = 0.0f;
                int i = 12;
                DefaultConstructorMarker defaultConstructorMarker = null;
            }
        });
        return mediaEditingConfigBuild;
    }

    public static /* synthetic */ MediaEditingConfig encodeSceneOutput$default(VideoManager videoManager, ArrayList arrayList, ArrayList arrayList2, File file, boolean z, boolean z2, IVideoServiceCallback iVideoServiceCallback, int i, Object obj) {
        boolean z3 = (i & 8) != 0 ? true : z;
        boolean z4 = (i & 16) != 0 ? false : z2;
        if ((i & 32) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.encodeSceneOutput(arrayList, arrayList2, file, z3, z4, iVideoServiceCallback);
    }

    public final MediaEditingConfig encodeSceneOutput(ArrayList<AVClipInfoPack> videoClips, ArrayList<AVClipInfoPack> arrayList, final File output, boolean z, boolean z2, final IVideoServiceCallback iVideoServiceCallback) {
        Intrinsics.checkParameterIsNotNull(videoClips, "videoClips");
        Intrinsics.checkParameterIsNotNull(output, "output");
        if (videoClips.isEmpty()) {
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
            return null;
        }
        Iterator<AVClipInfoPack> it = videoClips.iterator();
        int iTrimmedDurationInMs = 0;
        while (it.hasNext()) {
            iTrimmedDurationInMs += it.next().trimmedDurationInMs();
        }
        MediaEditingConfig.Companion.Builder builderKeepFixedDimension = new MediaEditingConfig.Companion.Builder(videoClips, output, 32).duration(iTrimmedDurationInMs).needProgressCallback(true).keepFixedDimension(z);
        if (arrayList != null) {
            builderKeepFixedDimension.additionalAudioInputList(arrayList);
        }
        if (videoClips.size() == 1) {
            builderKeepFixedDimension.startTime(videoClips.get(0).trimStartInMs());
        }
        MediaEditingConfig mediaEditingConfigBuild = builderKeepFixedDimension.build();
        mediaEditingConfigBuild.setTrim(true);
        mediaEditingConfigBuild.setTranscodeAudio(true);
        mediaEditingConfigBuild.setTranscodeVideo(true);
        this.delegate.execute(mediaEditingConfigBuild, z2 ? this.backgroundTaskExecutor : this.foregroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.encodeSceneOutput.2
            {
                String str = null;
                float f = 0.0f;
                int i = 12;
                DefaultConstructorMarker defaultConstructorMarker = null;
            }
        });
        return mediaEditingConfigBuild;
    }

    public static /* synthetic */ MediaEditingConfig mixBGM_Stage1$default(VideoManager videoManager, ArrayList arrayList, AVClipInfoPack aVClipInfoPack, File file, IVideoServiceCallback iVideoServiceCallback, int i, Object obj) {
        if ((i & 8) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.mixBGM_Stage1(arrayList, aVClipInfoPack, file, iVideoServiceCallback);
    }

    public final MediaEditingConfig mixBGM_Stage1(ArrayList<AVClipInfoPack> sceneVideoList, AVClipInfoPack bgm, File output, IVideoServiceCallback iVideoServiceCallback) {
        Intrinsics.checkParameterIsNotNull(sceneVideoList, "sceneVideoList");
        Intrinsics.checkParameterIsNotNull(bgm, "bgm");
        Intrinsics.checkParameterIsNotNull(output, "output");
        if (bgm.getInputFile() == null) {
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
            return null;
        }
        Iterator<AVClipInfoPack> it = sceneVideoList.iterator();
        int iTrimmedDurationInMs = 0;
        while (it.hasNext()) {
            AVClipInfoPack clip = it.next();
            Intrinsics.checkExpressionValueIsNotNull(clip, "clip");
            if (clip.getInputFile() == null) {
                if (iVideoServiceCallback != null) {
                    iVideoServiceCallback.onActionFailed(null);
                }
                return null;
            }
            iTrimmedDurationInMs += clip.trimmedDurationInMs();
        }
        sceneVideoList.add(0, bgm);
        File file = new File(output.getParent(), "silent.mp4");
        MediaEditingConfig mediaEditingConfigBuild = new MediaEditingConfig.Companion.Builder(bgm, file, 256).duration(iTrimmedDurationInMs).build();
        this.delegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new C11571(iVideoServiceCallback, file, output, sceneVideoList));
        return mediaEditingConfigBuild;
    }

    /* compiled from: VideoManager.kt */
    /* renamed from: com.narvii.video.services.VideoManager$mixBGM_Stage1$1, reason: invalid class name and case insensitive filesystem */
    public static final class C11571 implements IEditorExecuteCallback {
        final /* synthetic */ IVideoServiceCallback $callback;
        final /* synthetic */ File $output;
        final /* synthetic */ ArrayList $sceneVideoList;
        final /* synthetic */ File $tmpSilentAudioFile;

        C11571(IVideoServiceCallback iVideoServiceCallback, File file, File file2, ArrayList arrayList) {
            this.$callback = iVideoServiceCallback;
            this.$tmpSilentAudioFile = file;
            this.$output = file2;
            this.$sceneVideoList = arrayList;
        }

        @Override // ffmpeg.base.IEditorBaseCallback
        public void onStart() {
            IEditorExecuteCallback.DefaultImpls.onStart(this);
        }

        @Override // ffmpeg.base.IEditorExecuteCallback
        public void onProgress(float f) {
            IVideoServiceCallback iVideoServiceCallback = this.$callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onProgress(f * 0.3f, null);
            }
        }

        @Override // ffmpeg.base.IEditorBaseCallback
        public void onSuccess() {
            if (!this.$tmpSilentAudioFile.exists()) {
                IVideoServiceCallback iVideoServiceCallback = this.$callback;
                if (iVideoServiceCallback != null) {
                    iVideoServiceCallback.onActionFailed(null);
                    return;
                }
                return;
            }
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.inputPath = this.$tmpSilentAudioFile.getAbsolutePath();
            MediaEditingConfig mediaEditingConfigBuild = new MediaEditingConfig.Companion.Builder(aVClipInfoPack, this.$output, 32).additionalAudioInputList(this.$sceneVideoList).audioOnly(true).build();
            mediaEditingConfigBuild.setTranscodeAudio(true);
            IVideoServiceCallback iVideoServiceCallback2 = this.$callback;
            if (iVideoServiceCallback2 != null) {
                iVideoServiceCallback2.onExecutingTaskChanged(mediaEditingConfigBuild);
            }
            IEditor iEditor = VideoManager.this.delegate;
            ThreadPoolExecutor threadPoolExecutor = VideoManager.this.backgroundTaskExecutor;
            final IVideoServiceCallback iVideoServiceCallback3 = this.$callback;
            final File file = this.$output;
            final float f = 0.7f;
            iEditor.execute(mediaEditingConfigBuild, threadPoolExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback3, file, f) { // from class: com.narvii.video.services.VideoManager$mixBGM_Stage1$1$onSuccess$1
                {
                    VideoManager videoManager = VideoManager.this;
                    String str = null;
                    int i = 4;
                    DefaultConstructorMarker defaultConstructorMarker = null;
                }

                @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl, ffmpeg.base.IEditorExecuteCallback
                public void onProgress(float f2) {
                    IVideoServiceCallback iVideoServiceCallback4 = this.this$0.$callback;
                    if (iVideoServiceCallback4 != null) {
                        iVideoServiceCallback4.onProgress((f2 * 0.7f) + 0.3f, null);
                    }
                }

                @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl
                public void onFinish() {
                    super.onFinish();
                    this.this$0.onTaskStopped();
                }
            });
        }

        @Override // ffmpeg.base.IEditorBaseCallback
        public void onFail() {
            if (this.$output.exists()) {
                this.$output.delete();
            }
            onTaskStopped();
            IVideoServiceCallback iVideoServiceCallback = this.$callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
        }

        @Override // ffmpeg.base.IEditorExecuteCallback
        public void onCancel() {
            if (this.$output.exists()) {
                this.$output.delete();
            }
            onTaskStopped();
            IVideoServiceCallback iVideoServiceCallback = this.$callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionCancelled();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void onTaskStopped() {
            if (this.$tmpSilentAudioFile.exists()) {
                this.$tmpSilentAudioFile.delete();
            }
        }
    }

    public static /* synthetic */ MediaEditingConfig mixBGM_Stage2$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, AVClipInfoPack aVClipInfoPack2, File file, int i, IVideoServiceCallback iVideoServiceCallback, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.mixBGM_Stage2(aVClipInfoPack, aVClipInfoPack2, file, i, iVideoServiceCallback);
    }

    public final MediaEditingConfig mixBGM_Stage2(AVClipInfoPack video, AVClipInfoPack mixedAudio, File output, int i, IVideoServiceCallback iVideoServiceCallback) {
        Intrinsics.checkParameterIsNotNull(video, "video");
        Intrinsics.checkParameterIsNotNull(mixedAudio, "mixedAudio");
        Intrinsics.checkParameterIsNotNull(output, "output");
        if (video.getInputFile() == null || mixedAudio.getInputFile() == null) {
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
            return null;
        }
        File inputFile = mixedAudio.getInputFile();
        if (inputFile != null) {
            Intrinsics.checkExpressionValueIsNotNull(inputFile, "mixedAudio.inputFile!!");
            File file = new File(inputFile.getParent(), "audioPiece_" + String.valueOf(i) + ".mp4");
            if (file.exists()) {
                file.delete();
            }
            File absoluteFile = file.getAbsoluteFile();
            Intrinsics.checkExpressionValueIsNotNull(absoluteFile, "tmpAudioPieceFile.absoluteFile");
            MediaEditingConfig mediaEditingConfigBuild = new MediaEditingConfig.Companion.Builder(mixedAudio, absoluteFile, 8).audioOnly(true).forceAudioCodecCopy(true).startTime(mixedAudio.trimStartInMs).duration(mixedAudio.trimmedDurationInMs()).build();
            this.delegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new C11581(iVideoServiceCallback, file, video, output));
            return mediaEditingConfigBuild;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    /* compiled from: VideoManager.kt */
    /* renamed from: com.narvii.video.services.VideoManager$mixBGM_Stage2$1, reason: invalid class name and case insensitive filesystem */
    public static final class C11581 implements IEditorExecuteCallback {
        final /* synthetic */ IVideoServiceCallback $callback;
        final /* synthetic */ File $output;
        final /* synthetic */ File $tmpAudioPieceFile;
        final /* synthetic */ AVClipInfoPack $video;

        C11581(IVideoServiceCallback iVideoServiceCallback, File file, AVClipInfoPack aVClipInfoPack, File file2) {
            this.$callback = iVideoServiceCallback;
            this.$tmpAudioPieceFile = file;
            this.$video = aVClipInfoPack;
            this.$output = file2;
        }

        @Override // ffmpeg.base.IEditorBaseCallback
        public void onStart() {
            IEditorExecuteCallback.DefaultImpls.onStart(this);
        }

        @Override // ffmpeg.base.IEditorExecuteCallback
        public void onProgress(float f) {
            IVideoServiceCallback iVideoServiceCallback = this.$callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onProgress(f * 0.5f, null);
            }
        }

        @Override // ffmpeg.base.IEditorBaseCallback
        public void onSuccess() {
            if (!this.$tmpAudioPieceFile.exists()) {
                IVideoServiceCallback iVideoServiceCallback = this.$callback;
                if (iVideoServiceCallback != null) {
                    iVideoServiceCallback.onActionFailed(null);
                    return;
                }
                return;
            }
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.inputPath = this.$tmpAudioPieceFile.getAbsolutePath();
            MediaEditingConfig mediaEditingConfigBuild = new MediaEditingConfig.Companion.Builder(this.$video, this.$output, 128).additionalAudioInputList(CollectionsKt__CollectionsJVMKt.listOf(aVClipInfoPack)).forceAudioCodecCopy(true).build();
            IVideoServiceCallback iVideoServiceCallback2 = this.$callback;
            if (iVideoServiceCallback2 != null) {
                iVideoServiceCallback2.onExecutingTaskChanged(mediaEditingConfigBuild);
            }
            IEditor iEditor = VideoManager.this.delegate;
            ThreadPoolExecutor threadPoolExecutor = VideoManager.this.backgroundTaskExecutor;
            final IVideoServiceCallback iVideoServiceCallback3 = this.$callback;
            final File file = this.$output;
            final float f = 0.5f;
            iEditor.execute(mediaEditingConfigBuild, threadPoolExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback3, file, f) { // from class: com.narvii.video.services.VideoManager$mixBGM_Stage2$1$onSuccess$1
                {
                    VideoManager videoManager = VideoManager.this;
                    String str = null;
                    int i = 4;
                    DefaultConstructorMarker defaultConstructorMarker = null;
                }

                @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl, ffmpeg.base.IEditorExecuteCallback
                public void onProgress(float f2) {
                    IVideoServiceCallback iVideoServiceCallback4 = this.this$0.$callback;
                    if (iVideoServiceCallback4 != null) {
                        iVideoServiceCallback4.onProgress((f2 * 0.5f) + 0.5f, null);
                    }
                }

                @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl
                public void onFinish() {
                    super.onFinish();
                    this.this$0.onTaskStopped();
                }
            });
        }

        @Override // ffmpeg.base.IEditorBaseCallback
        public void onFail() {
            if (this.$output.exists()) {
                this.$output.delete();
            }
            onTaskStopped();
            IVideoServiceCallback iVideoServiceCallback = this.$callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
        }

        @Override // ffmpeg.base.IEditorExecuteCallback
        public void onCancel() {
            if (this.$output.exists()) {
                this.$output.delete();
            }
            onTaskStopped();
            IVideoServiceCallback iVideoServiceCallback = this.$callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionCancelled();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void onTaskStopped() {
            if (this.$tmpAudioPieceFile.exists()) {
                this.$tmpAudioPieceFile.delete();
            }
        }
    }

    public final MediaEditingConfig getCoverImage(AVClipInfoPack input, final File output, final int i, int i2, int i3, final IVideoServiceCallback iVideoServiceCallback, final String str, boolean z) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(output, "output");
        MediaEditingConfig mediaEditingConfigBuild = new MediaEditingConfig.Companion.Builder(input, output, 16).startTime(i).screenshotScaleToSize(i2, i3).keepFixedDimension(z).build();
        this.delegate.execute(mediaEditingConfigBuild, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(iVideoServiceCallback, output, str) { // from class: com.narvii.video.services.VideoManager.getCoverImage.1
            {
                float f = 0.0f;
                int i4 = 8;
                DefaultConstructorMarker defaultConstructorMarker = null;
            }

            @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl, ffmpeg.base.IEditorBaseCallback
            public void onSuccess() {
                IVideoServiceCallback iVideoServiceCallback2 = iVideoServiceCallback;
                if (iVideoServiceCallback2 != null) {
                    iVideoServiceCallback2.onFramePicturesLoaded(i, null);
                }
            }
        });
        return mediaEditingConfigBuild;
    }

    public final void abort(MediaEditingConfig task) {
        Intrinsics.checkParameterIsNotNull(task, "task");
        if (task.getForceSoftware()) {
            this.softwareDelegate.abort(task);
        } else {
            this.delegate.abort(task);
        }
    }

    public final void abortAll(ArrayList<MediaEditingConfig> tasks) {
        Intrinsics.checkParameterIsNotNull(tasks, "tasks");
        Iterator<MediaEditingConfig> it = tasks.iterator();
        while (it.hasNext()) {
            MediaEditingConfig task = it.next();
            Intrinsics.checkExpressionValueIsNotNull(task, "task");
            abort(task);
        }
    }

    public final void abortAnimatedStickerConvertTask(StickerInfoPack stickerInfoPack) {
        Intrinsics.checkParameterIsNotNull(stickerInfoPack, "stickerInfoPack");
        this.delegate.abortAnimatedStickerConvertTask(stickerInfoPack);
    }

    public final void abortAnimatedStickerConvertTasks() {
        this.delegate.abortAnimatedStickerConvertTasks();
    }

    public final void registerStickerInstallCallback(IInstallStickerCallback callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.pageInstallStickerCallback = callback;
    }

    public final void unregisterStickerInstallCallback() {
        this.pageInstallStickerCallback = null;
    }

    public final void addViewInstallStickerCallback(Sticker sticker, IInstallStickerCallback viewInstallStickerCallback) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        Intrinsics.checkParameterIsNotNull(viewInstallStickerCallback, "viewInstallStickerCallback");
        this.viewInstallStickerCallbackMap.put(createStickerInstallKey(sticker), viewInstallStickerCallback);
    }

    public final void removeViewInstallStickerCallback(Sticker sticker) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        this.viewInstallStickerCallbackMap.remove(createStickerInstallKey(sticker));
    }

    public final void removeViewInstallCollectionCallbacks(String collectionId) {
        Intrinsics.checkParameterIsNotNull(collectionId, "collectionId");
        Iterator<Map.Entry<String, IInstallStickerCallback>> it = this.viewInstallStickerCallbackMap.entrySet().iterator();
        while (it.hasNext()) {
            if (StringsKt__StringsKt.contains(it.next().getKey(), collectionId, true)) {
                it.remove();
            }
        }
    }

    public final void removeAllViewInstallStickerCallback() {
        this.viewInstallStickerCallbackMap.clear();
    }

    private final String createStickerInstallKey(Sticker sticker) {
        if (sticker.stickerCollectionId != null) {
            return sticker.stickerCollectionId + "_" + sticker.stickerId;
        }
        String stickerId = sticker.stickerId;
        Intrinsics.checkExpressionValueIsNotNull(stickerId, "stickerId");
        return stickerId;
    }

    public final StickerInfoPack obtainInstalledStickerInfo(Sticker sticker, String str) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        if (str == null) {
            return null;
        }
        String strCreateStickerInstallKey = createStickerInstallKey(sticker);
        if (this.installedStickerMap.containsKey(strCreateStickerInstallKey)) {
            StickerInfoPack stickerInfoPack = this.installedStickerMap.get(strCreateStickerInstallKey);
            if (stickerInfoPack != null) {
                stickerInfoPack.sourceType = sticker.sourceType;
                return stickerInfoPack;
            }
            this.installedStickerMap.remove(strCreateStickerInstallKey);
        }
        StickerInfoPack stickerInfoPack2 = StickerInfoPack.constructFromSticker(sticker);
        stickerInfoPack2.srcImagePath = str;
        IEditor iEditor = this.delegate;
        Intrinsics.checkExpressionValueIsNotNull(stickerInfoPack2, "stickerInfoPack");
        File stickerCopiedSrcFile = iEditor.getStickerCopiedSrcFile(stickerInfoPack2);
        File targetStickerInstallFile = this.delegate.getTargetStickerInstallFile(stickerInfoPack2);
        if (stickerCopiedSrcFile == null || !stickerCopiedSrcFile.exists() || targetStickerInstallFile == null || !targetStickerInstallFile.exists() || !this.delegate.hasStickerTemplatedInstalled(stickerInfoPack2)) {
            return null;
        }
        stickerInfoPack2.srcImagePath = stickerCopiedSrcFile.getAbsolutePath();
        stickerInfoPack2.installedPath = targetStickerInstallFile.getAbsolutePath();
        this.installedStickerMap.put(strCreateStickerInstallKey, stickerInfoPack2);
        return stickerInfoPack2;
    }

    public final void installSticker(final Sticker sticker, String str, boolean z, IInstallStickerCallback iInstallStickerCallback) {
        Intrinsics.checkParameterIsNotNull(sticker, "sticker");
        StickerInfoPack stickerInfoPackObtainInstalledStickerInfo = obtainInstalledStickerInfo(sticker, str != null ? str : "");
        if (stickerInfoPackObtainInstalledStickerInfo != null) {
            if (iInstallStickerCallback != null) {
                iInstallStickerCallback.onStickerInstalled(stickerInfoPackObtainInstalledStickerInfo);
            }
            IInstallStickerCallback iInstallStickerCallback2 = this.pageInstallStickerCallback;
            if (iInstallStickerCallback2 != null) {
                iInstallStickerCallback2.onStickerInstalled(stickerInfoPackObtainInstalledStickerInfo);
                return;
            }
            return;
        }
        final String strCreateStickerInstallKey = createStickerInstallKey(sticker);
        final StickerInfoPack stickerInfoPack = StickerInfoPack.constructFromSticker(sticker);
        stickerInfoPack.srcImagePath = str;
        this.viewInstallStickerCallbackMap.put(strCreateStickerInstallKey, iInstallStickerCallback);
        IEditorBaseCallback iEditorBaseCallback = new IEditorBaseCallback() { // from class: com.narvii.video.services.VideoManager$installSticker$innerCallback$1
            @Override // ffmpeg.base.IEditorBaseCallback
            public void onStart() {
                IEditorBaseCallback.DefaultImpls.onStart(this);
                VideoManager.IInstallStickerCallback iInstallStickerCallback3 = (VideoManager.IInstallStickerCallback) this.this$0.viewInstallStickerCallbackMap.get(strCreateStickerInstallKey);
                if (iInstallStickerCallback3 != null) {
                    StickerInfoPack stickerInfoPack2 = stickerInfoPack;
                    Intrinsics.checkExpressionValueIsNotNull(stickerInfoPack2, "stickerInfoPack");
                    iInstallStickerCallback3.onStickerInstallStart(stickerInfoPack2);
                }
                VideoManager.IInstallStickerCallback iInstallStickerCallback4 = this.this$0.pageInstallStickerCallback;
                if (iInstallStickerCallback4 != null) {
                    StickerInfoPack stickerInfoPack3 = stickerInfoPack;
                    Intrinsics.checkExpressionValueIsNotNull(stickerInfoPack3, "stickerInfoPack");
                    iInstallStickerCallback4.onStickerInstallStart(stickerInfoPack3);
                }
            }

            @Override // ffmpeg.base.IEditorBaseCallback
            public void onSuccess() {
                IEditorBaseCallback.DefaultImpls.onSuccess(this);
                HashMap map = this.this$0.installedStickerMap;
                String str2 = strCreateStickerInstallKey;
                StickerInfoPack stickerInfoPack2 = stickerInfoPack;
                Intrinsics.checkExpressionValueIsNotNull(stickerInfoPack2, "stickerInfoPack");
                map.put(str2, stickerInfoPack2);
                VideoManager.IInstallStickerCallback iInstallStickerCallback3 = (VideoManager.IInstallStickerCallback) this.this$0.viewInstallStickerCallbackMap.get(strCreateStickerInstallKey);
                if (iInstallStickerCallback3 != null) {
                    StickerInfoPack stickerInfoPack3 = stickerInfoPack;
                    Intrinsics.checkExpressionValueIsNotNull(stickerInfoPack3, "stickerInfoPack");
                    iInstallStickerCallback3.onStickerInstalled(stickerInfoPack3);
                }
                VideoManager.IInstallStickerCallback iInstallStickerCallback4 = this.this$0.pageInstallStickerCallback;
                if (iInstallStickerCallback4 != null) {
                    StickerInfoPack stickerInfoPack4 = stickerInfoPack;
                    Intrinsics.checkExpressionValueIsNotNull(stickerInfoPack4, "stickerInfoPack");
                    iInstallStickerCallback4.onStickerInstalled(stickerInfoPack4);
                }
                this.this$0.viewInstallStickerCallbackMap.remove(strCreateStickerInstallKey);
            }

            @Override // ffmpeg.base.IEditorBaseCallback
            public void onFail() {
                IEditorBaseCallback.DefaultImpls.onFail(this);
                VideoManager.IInstallStickerCallback iInstallStickerCallback3 = (VideoManager.IInstallStickerCallback) this.this$0.viewInstallStickerCallbackMap.get(strCreateStickerInstallKey);
                if (iInstallStickerCallback3 != null) {
                    iInstallStickerCallback3.onStickerInstallFailed(sticker);
                }
                VideoManager.IInstallStickerCallback iInstallStickerCallback4 = this.this$0.pageInstallStickerCallback;
                if (iInstallStickerCallback4 != null) {
                    iInstallStickerCallback4.onStickerInstallFailed(sticker);
                }
                this.this$0.viewInstallStickerCallbackMap.remove(strCreateStickerInstallKey);
            }
        };
        if (Utils.isWebP(stickerInfoPack.srcImagePath)) {
            TopActivityService activityService = (TopActivityService) this.ctx.getService("topActivity");
            Intrinsics.checkExpressionValueIsNotNull(activityService, "activityService");
            Activity lastResumedActivity = activityService.getLastResumedActivity();
            if (lastResumedActivity != null && !lastResumedActivity.isFinishing()) {
                IEditor iEditor = this.delegate;
                Intrinsics.checkExpressionValueIsNotNull(stickerInfoPack, "stickerInfoPack");
                iEditor.installSticker(lastResumedActivity, stickerInfoPack, z, this.backgroundTaskExecutor, iEditorBaseCallback);
                return;
            } else {
                if (iInstallStickerCallback != null) {
                    iInstallStickerCallback.onStickerInstallFailed(sticker);
                }
                IInstallStickerCallback iInstallStickerCallback3 = this.pageInstallStickerCallback;
                if (iInstallStickerCallback3 != null) {
                    iInstallStickerCallback3.onStickerInstallFailed(sticker);
                    return;
                }
                return;
            }
        }
        IEditor iEditor2 = this.delegate;
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        Intrinsics.checkExpressionValueIsNotNull(stickerInfoPack, "stickerInfoPack");
        iEditor2.installSticker(context, stickerInfoPack, z, this.foregroundTaskExecutor, iEditorBaseCallback);
    }

    public final void onLocalStickerCacheCleared() {
        this.installedStickerMap.clear();
        this.delegate.onLocalStickerCacheCleared();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VideoManager.kt */
    class SimpleEditorExecuteCallbackImpl implements IEditorExecuteCallback {
        private final IVideoServiceCallback callback;
        private final File output;
        private final float progressProportion;
        private final String tag;
        final /* synthetic */ VideoManager this$0;

        public void onFinish() {
        }

        public SimpleEditorExecuteCallbackImpl(VideoManager videoManager, IVideoServiceCallback iVideoServiceCallback, File output, String str, float f) {
            Intrinsics.checkParameterIsNotNull(output, "output");
            this.this$0 = videoManager;
            this.callback = iVideoServiceCallback;
            this.output = output;
            this.tag = str;
            this.progressProportion = f;
        }

        public /* synthetic */ SimpleEditorExecuteCallbackImpl(VideoManager videoManager, IVideoServiceCallback iVideoServiceCallback, File file, String str, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(videoManager, iVideoServiceCallback, file, (i & 4) != 0 ? null : str, (i & 8) != 0 ? 1.0f : f);
        }

        public final IVideoServiceCallback getCallback() {
            return this.callback;
        }

        public final File getOutput() {
            return this.output;
        }

        public final float getProgressProportion() {
            return this.progressProportion;
        }

        public final String getTag() {
            return this.tag;
        }

        @Override // ffmpeg.base.IEditorBaseCallback
        public void onStart() {
            IVideoServiceCallback iVideoServiceCallback = this.callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionStarted();
            }
        }

        @Override // ffmpeg.base.IEditorExecuteCallback
        public void onProgress(float f) {
            IVideoServiceCallback iVideoServiceCallback = this.callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onProgress(f * this.progressProportion, this.tag);
            }
        }

        @Override // ffmpeg.base.IEditorBaseCallback
        public void onSuccess() {
            if (!this.output.exists()) {
                IVideoServiceCallback iVideoServiceCallback = this.callback;
                if (iVideoServiceCallback != null) {
                    iVideoServiceCallback.onActionFailed(null);
                    return;
                }
                return;
            }
            IVideoServiceCallback iVideoServiceCallback2 = this.callback;
            if (iVideoServiceCallback2 != null) {
                String absolutePath = this.output.getAbsolutePath();
                Intrinsics.checkExpressionValueIsNotNull(absolutePath, "output.absolutePath");
                iVideoServiceCallback2.onVideoProcessed(absolutePath);
            }
            onFinish();
        }

        @Override // ffmpeg.base.IEditorBaseCallback
        public void onFail() {
            if (this.output.exists()) {
                this.output.delete();
            }
            IVideoServiceCallback iVideoServiceCallback = this.callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
            onFinish();
        }

        @Override // ffmpeg.base.IEditorExecuteCallback
        public void onCancel() {
            if (this.output.exists()) {
                this.output.delete();
            }
            IVideoServiceCallback iVideoServiceCallback = this.callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionCancelled();
            }
            onFinish();
        }
    }
}
