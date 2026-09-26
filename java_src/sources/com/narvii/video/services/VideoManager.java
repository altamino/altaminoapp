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
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class VideoManager {
    private final ThreadPoolExecutor backgroundTaskExecutor;

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final g7.a delegate;
    private final ThreadPoolExecutor foregroundTaskExecutor;

    @NotNull
    private final HashMap<String, StickerInfoPack> installedStickerMap;

    @Nullable
    private IInstallStickerCallback pageInstallStickerCallback;

    @NotNull
    private final g7.a softwareDelegate;

    @NotNull
    private final File tmpFileFolder;

    @NotNull
    private final HashMap<String, IInstallStickerCallback> viewInstallStickerCallbackMap;

    public interface IFetchStreamInfoCallback {
        void onStreamInfoFetched(@NotNull StreamInfo streamInfo);
    }

    public interface IInstallStickerCallback {
        void onStickerInstallFailed(@NotNull Sticker sticker);

        void onStickerInstallStart(@NotNull StickerInfoPack stickerInfoPack);

        void onStickerInstalled(@NotNull StickerInfoPack stickerInfoPack);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SimpleEditorExecuteCallbackImpl implements g7.c {

        @Nullable
        private final IVideoServiceCallback callback;

        @NotNull
        private final File output;
        private final float progressProportion;

        @Nullable
        private final String tag;
        final /* synthetic */ VideoManager this$0;

        public SimpleEditorExecuteCallbackImpl(@Nullable VideoManager videoManager, @NotNull IVideoServiceCallback iVideoServiceCallback, @Nullable File output, String str, float f) {
            t.j(output, "output");
            this.this$0 = videoManager;
            this.callback = iVideoServiceCallback;
            this.output = output;
            this.tag = str;
            this.progressProportion = f;
        }

        @Nullable
        public final IVideoServiceCallback getCallback() {
            return this.callback;
        }

        @NotNull
        public final File getOutput() {
            return this.output;
        }

        public final float getProgressProportion() {
            return this.progressProportion;
        }

        @Nullable
        public final String getTag() {
            return this.tag;
        }

        public void onFinish() {
        }

        public /* synthetic */ SimpleEditorExecuteCallbackImpl(VideoManager videoManager, IVideoServiceCallback iVideoServiceCallback, File file, String str, float f, int i10, kotlin.jvm.internal.k kVar) {
            this(videoManager, iVideoServiceCallback, file, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? 1.0f : f);
        }

        @Override // g7.c
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

        @Override // g7.b
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

        @Override // g7.c
        public void onProgress(float f) {
            IVideoServiceCallback iVideoServiceCallback = this.callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onProgress(f * this.progressProportion, this.tag);
            }
        }

        @Override // g7.b
        public void onStart() {
            IVideoServiceCallback iVideoServiceCallback = this.callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionStarted();
            }
        }

        @Override // g7.b
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
                t.i(absolutePath, "getAbsolutePath(...)");
                iVideoServiceCallback2.onVideoProcessed(absolutePath);
            }
            onFinish();
        }
    }

    /* JADX INFO: renamed from: com.narvii.video.services.VideoManager$mixBGM_Stage1$1, reason: invalid class name and case insensitive filesystem */
    public static final class C05771 implements g7.c {
        final /* synthetic */ IVideoServiceCallback $callback;
        final /* synthetic */ File $output;
        final /* synthetic */ ArrayList<AVClipInfoPack> $sceneVideoList;
        final /* synthetic */ File $tmpSilentAudioFile;
        final /* synthetic */ VideoManager this$0;

        C05771(IVideoServiceCallback iVideoServiceCallback, File file, File file2, ArrayList<AVClipInfoPack> arrayList, VideoManager videoManager) {
            this.$callback = iVideoServiceCallback;
            this.$tmpSilentAudioFile = file;
            this.$output = file2;
            this.$sceneVideoList = arrayList;
            this.this$0 = videoManager;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void onTaskStopped() {
            if (this.$tmpSilentAudioFile.exists()) {
                this.$tmpSilentAudioFile.delete();
            }
        }

        @Override // g7.c
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

        @Override // g7.b
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

        @Override // g7.c
        public void onProgress(float f) {
            IVideoServiceCallback iVideoServiceCallback = this.$callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onProgress(f * 0.3f, null);
            }
        }

        @Override // g7.b
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
            g7.d dVarC = new g7.d.a.C0381a(aVClipInfoPack, this.$output, 32).a(this.$sceneVideoList).b(true).c();
            dVarC.L(true);
            IVideoServiceCallback iVideoServiceCallback2 = this.$callback;
            if (iVideoServiceCallback2 != null) {
                iVideoServiceCallback2.onExecutingTaskChanged(dVarC);
            }
            g7.a aVar = this.this$0.delegate;
            ThreadPoolExecutor threadPoolExecutor = this.this$0.backgroundTaskExecutor;
            final VideoManager videoManager = this.this$0;
            final IVideoServiceCallback iVideoServiceCallback3 = this.$callback;
            final File file = this.$output;
            aVar.execute(dVarC, threadPoolExecutor, new SimpleEditorExecuteCallbackImpl(videoManager, iVideoServiceCallback3, file, this) { // from class: com.narvii.video.services.VideoManager$mixBGM_Stage1$1$onSuccess$1
                final /* synthetic */ IVideoServiceCallback $callback;
                final /* synthetic */ VideoManager.C05771 this$0;

                {
                    this.$callback = iVideoServiceCallback3;
                    this.this$0 = this;
                    String str = null;
                    float f = 0.7f;
                    int i10 = 4;
                    kotlin.jvm.internal.k kVar = null;
                }

                @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl, g7.c
                public void onProgress(float f) {
                    IVideoServiceCallback iVideoServiceCallback4 = this.$callback;
                    if (iVideoServiceCallback4 != null) {
                        iVideoServiceCallback4.onProgress((f * 0.7f) + 0.3f, null);
                    }
                }

                @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl
                public void onFinish() {
                    super.onFinish();
                    this.this$0.onTaskStopped();
                }
            });
        }

        @Override // g7.b
        public void onStart() {
            g7.c.a.d(this);
        }
    }

    /* JADX INFO: renamed from: com.narvii.video.services.VideoManager$mixBGM_Stage2$1, reason: invalid class name and case insensitive filesystem */
    public static final class C05781 implements g7.c {
        final /* synthetic */ IVideoServiceCallback $callback;
        final /* synthetic */ File $output;
        final /* synthetic */ File $tmpAudioPieceFile;
        final /* synthetic */ AVClipInfoPack $video;
        final /* synthetic */ VideoManager this$0;

        C05781(IVideoServiceCallback iVideoServiceCallback, File file, AVClipInfoPack aVClipInfoPack, File file2, VideoManager videoManager) {
            this.$callback = iVideoServiceCallback;
            this.$tmpAudioPieceFile = file;
            this.$video = aVClipInfoPack;
            this.$output = file2;
            this.this$0 = videoManager;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void onTaskStopped() {
            if (this.$tmpAudioPieceFile.exists()) {
                this.$tmpAudioPieceFile.delete();
            }
        }

        @Override // g7.c
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

        @Override // g7.b
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

        @Override // g7.c
        public void onProgress(float f) {
            IVideoServiceCallback iVideoServiceCallback = this.$callback;
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onProgress(f * 0.5f, null);
            }
        }

        @Override // g7.b
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
            g7.d dVarC = new g7.d.a.C0381a(this.$video, this.$output, 128).a(u.e(aVClipInfoPack)).f(true).c();
            IVideoServiceCallback iVideoServiceCallback2 = this.$callback;
            if (iVideoServiceCallback2 != null) {
                iVideoServiceCallback2.onExecutingTaskChanged(dVarC);
            }
            g7.a aVar = this.this$0.delegate;
            ThreadPoolExecutor threadPoolExecutor = this.this$0.backgroundTaskExecutor;
            final VideoManager videoManager = this.this$0;
            final IVideoServiceCallback iVideoServiceCallback3 = this.$callback;
            final File file = this.$output;
            aVar.execute(dVarC, threadPoolExecutor, new SimpleEditorExecuteCallbackImpl(videoManager, iVideoServiceCallback3, file, this) { // from class: com.narvii.video.services.VideoManager$mixBGM_Stage2$1$onSuccess$1
                final /* synthetic */ IVideoServiceCallback $callback;
                final /* synthetic */ VideoManager.C05781 this$0;

                {
                    this.$callback = iVideoServiceCallback3;
                    this.this$0 = this;
                    String str = null;
                    float f = 0.5f;
                    int i10 = 4;
                    kotlin.jvm.internal.k kVar = null;
                }

                @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl, g7.c
                public void onProgress(float f) {
                    IVideoServiceCallback iVideoServiceCallback4 = this.$callback;
                    if (iVideoServiceCallback4 != null) {
                        iVideoServiceCallback4.onProgress((f * 0.5f) + 0.5f, null);
                    }
                }

                @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl
                public void onFinish() {
                    super.onFinish();
                    this.this$0.onTaskStopped();
                }
            });
        }

        @Override // g7.b
        public void onStart() {
            g7.c.a.d(this);
        }
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    @NotNull
    public final File getTmpFileFolder() {
        return this.tmpFileFolder;
    }

    public final void registerStickerInstallCallback(@NotNull IInstallStickerCallback callback) {
        t.j(callback, "callback");
        this.pageInstallStickerCallback = callback;
    }

    public final void unregisterStickerInstallCallback() {
        this.pageInstallStickerCallback = null;
    }

    public VideoManager(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        g7.e.a aVar = g7.e.Companion;
        this.delegate = aVar.a(ctx);
        Context context = ctx.getContext();
        t.i(context, "getContext(...)");
        this.softwareDelegate = aVar.b(context);
        this.foregroundTaskExecutor = Utils.createThreadPoolExecutor(Math.min(4, Utils.getCoreThreadCount() - 1), "Foreground_encoding");
        this.backgroundTaskExecutor = Utils.createThreadPoolExecutor(1, "Background_encoding");
        File file = new File(ctx.getContext().getExternalCacheDir(), "video_tmp");
        this.tmpFileFolder = file;
        this.installedStickerMap = new HashMap<>();
        this.viewInstallStickerCallbackMap = new HashMap<>();
        file.mkdir();
    }

    public static /* synthetic */ g7.d concatVideo$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, File file, IVideoServiceCallback iVideoServiceCallback, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.concatVideo(aVClipInfoPack, file, iVideoServiceCallback);
    }

    public static /* synthetic */ g7.d convertImg2Video$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, File file, IVideoServiceCallback iVideoServiceCallback, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.convertImg2Video(aVClipInfoPack, file, iVideoServiceCallback);
    }

    private final String createStickerInstallKey(Sticker sticker) {
        if (sticker.stickerCollectionId == null) {
            String str = sticker.stickerId;
            t.g(str);
            return str;
        }
        return sticker.stickerCollectionId + '_' + sticker.stickerId;
    }

    public static /* synthetic */ g7.d cropVideo$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, File file, int i10, int i11, IVideoServiceCallback iVideoServiceCallback, String str, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return videoManager.cropVideo(aVClipInfoPack, file, i10, i11, (i12 & 16) != 0 ? null : iVideoServiceCallback, (i12 & 32) != 0 ? null : str);
    }

    public static /* synthetic */ g7.d encodeSceneOutput$default(VideoManager videoManager, ArrayList arrayList, ArrayList arrayList2, File file, boolean z6, boolean z10, IVideoServiceCallback iVideoServiceCallback, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z6 = true;
        }
        boolean z11 = z6;
        if ((i10 & 16) != 0) {
            z10 = false;
        }
        boolean z12 = z10;
        if ((i10 & 32) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.encodeSceneOutput(arrayList, arrayList2, file, z11, z12, iVideoServiceCallback);
    }

    public static /* synthetic */ g7.d encodeScenePreview$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, ArrayList arrayList, File file, boolean z6, IVideoServiceCallback iVideoServiceCallback, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z6 = false;
        }
        boolean z10 = z6;
        if ((i10 & 16) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.encodeScenePreview(aVClipInfoPack, arrayList, file, z10, iVideoServiceCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchStreamInfo$lambda$0(IFetchStreamInfoCallback callback, VideoManager this$0, String input) {
        t.j(callback, "$callback");
        t.j(this$0, "this$0");
        t.j(input, "$input");
        callback.onStreamInfoFetched(this$0.delegate.fetchStreamingInfo(input));
    }

    public static /* synthetic */ g7.d mixBGM_Stage1$default(VideoManager videoManager, ArrayList arrayList, AVClipInfoPack aVClipInfoPack, File file, IVideoServiceCallback iVideoServiceCallback, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.mixBGM_Stage1(arrayList, aVClipInfoPack, file, iVideoServiceCallback);
    }

    public static /* synthetic */ g7.d mixBGM_Stage2$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, AVClipInfoPack aVClipInfoPack2, File file, int i10, IVideoServiceCallback iVideoServiceCallback, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            iVideoServiceCallback = null;
        }
        return videoManager.mixBGM_Stage2(aVClipInfoPack, aVClipInfoPack2, file, i10, iVideoServiceCallback);
    }

    public static /* synthetic */ g7.d simpleAVMix$default(VideoManager videoManager, AVClipInfoPack aVClipInfoPack, List list, File file, IVideoServiceCallback iVideoServiceCallback, boolean z6, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            iVideoServiceCallback = null;
        }
        IVideoServiceCallback iVideoServiceCallback2 = iVideoServiceCallback;
        if ((i10 & 16) != 0) {
            z6 = false;
        }
        return videoManager.simpleAVMix(aVClipInfoPack, list, file, iVideoServiceCallback2, z6);
    }

    public final void abortAnimatedStickerConvertTask(@NotNull StickerInfoPack stickerInfoPack) {
        t.j(stickerInfoPack, "stickerInfoPack");
        this.delegate.abortAnimatedStickerConvertTask(stickerInfoPack);
    }

    public final void abortAnimatedStickerConvertTasks() {
        this.delegate.abortAnimatedStickerConvertTasks();
    }

    public final void addViewInstallStickerCallback(@NotNull Sticker sticker, @NotNull IInstallStickerCallback viewInstallStickerCallback) {
        t.j(sticker, "sticker");
        t.j(viewInstallStickerCallback, "viewInstallStickerCallback");
        this.viewInstallStickerCallbackMap.put(createStickerInstallKey(sticker), viewInstallStickerCallback);
    }

    @Nullable
    public final g7.d concatVideo(@NotNull AVClipInfoPack input, @NotNull File output, @Nullable IVideoServiceCallback iVideoServiceCallback) {
        t.j(input, "input");
        t.j(output, "output");
        g7.d dVarC = new g7.d.a.C0381a(input, output, 4096).I(true).c();
        this.delegate.execute(dVarC, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.concatVideo.1
            {
                String str = null;
                float f = 0.0f;
                int i10 = 12;
                kotlin.jvm.internal.k kVar = null;
            }
        });
        return dVarC;
    }

    @Nullable
    public final g7.d convertImg2Video(@NotNull AVClipInfoPack input, @NotNull File output, @Nullable IVideoServiceCallback iVideoServiceCallback) {
        t.j(input, "input");
        t.j(output, "output");
        if (Utils.isBMP(input.inputPath) || Utils.isJPG(input.inputPath) || Utils.isPNG(input.inputPath)) {
            g7.d dVarC = new g7.d.a.C0381a(input, output, 1024).c();
            this.delegate.execute(dVarC, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.convertImg2Video.1
                {
                    String str = null;
                    float f = 0.0f;
                    int i10 = 12;
                    kotlin.jvm.internal.k kVar = null;
                }
            });
            return dVarC;
        }
        if (!Utils.isGifInData(input.inputPath)) {
            return null;
        }
        g7.d dVarC2 = new g7.d.a.C0381a(input, output, 2048).c();
        this.delegate.execute(dVarC2, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.convertImg2Video.2
            {
                String str = null;
                float f = 0.0f;
                int i10 = 12;
                kotlin.jvm.internal.k kVar = null;
            }
        });
        return dVarC2;
    }

    @NotNull
    public final g7.d cropVideo(@NotNull AVClipInfoPack input, @NotNull File output, int i10, int i11, @Nullable IVideoServiceCallback iVideoServiceCallback, @Nullable String str) {
        t.j(input, "input");
        t.j(output, "output");
        g7.d dVarC = new g7.d.a.C0381a(input, output, 0, 4, (kotlin.jvm.internal.k) null).e(i10).M(i11).I(true).c();
        this.delegate.execute(dVarC, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output, str) { // from class: com.narvii.video.services.VideoManager.cropVideo.1
            {
                float f = 0.0f;
                int i12 = 8;
                kotlin.jvm.internal.k kVar = null;
            }
        });
        return dVarC;
    }

    @NotNull
    public final g7.d cropVideoByCopy(@NotNull AVClipInfoPack input, @NotNull File output, int i10, int i11, boolean z6, @Nullable IVideoServiceCallback iVideoServiceCallback, boolean z10, boolean z11, @Nullable String str) {
        t.j(input, "input");
        t.j(output, "output");
        g7.d.a.C0381a c0381aM = new g7.d.a.C0381a(input, output, 8).e(i10).M(i11);
        if (z10 && z11) {
            c0381aM.g(true).f(true);
        } else if (z10) {
            c0381aM.g(true).N(true);
        } else if (z11) {
            c0381aM.f(true).b(true);
        }
        c0381aM.I(true).d(z6);
        g7.d dVarC = c0381aM.c();
        this.delegate.execute(dVarC, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output, str) { // from class: com.narvii.video.services.VideoManager.cropVideoByCopy.1
            {
                float f = 0.0f;
                int i12 = 8;
                kotlin.jvm.internal.k kVar = null;
            }
        });
        return dVarC;
    }

    public final void fetchStreamInfo(@NotNull final String input, @NotNull final IFetchStreamInfoCallback callback) {
        t.j(input, "input");
        t.j(callback, "callback");
        this.foregroundTaskExecutor.execute(new Runnable() { // from class: com.narvii.video.services.m
            @Override // java.lang.Runnable
            public final void run() {
                VideoManager.fetchStreamInfo$lambda$0(callback, this, input);
            }
        });
    }

    @NotNull
    public final StreamInfo fetchStreamInfoSync(@NotNull String input) {
        t.j(input, "input");
        return this.delegate.fetchStreamingInfo(input);
    }

    @Nullable
    public final g7.d getCoverImage(@NotNull AVClipInfoPack input, @NotNull File output, int i10, int i11, int i12, @Nullable IVideoServiceCallback iVideoServiceCallback, @Nullable String str, boolean z6) {
        t.j(input, "input");
        t.j(output, "output");
        g7.d dVarC = new g7.d.a.C0381a(input, output, 16).M(i10).L(i11, i12).G(z6).c();
        this.delegate.execute(dVarC, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output, str, i10) { // from class: com.narvii.video.services.VideoManager.getCoverImage.1
            final /* synthetic */ IVideoServiceCallback $callback;
            final /* synthetic */ int $startTime;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this, iVideoServiceCallback, output, str, 0.0f, 8, null);
                this.$callback = iVideoServiceCallback;
                this.$startTime = i10;
            }

            @Override // com.narvii.video.services.VideoManager.SimpleEditorExecuteCallbackImpl, g7.b
            public void onSuccess() {
                IVideoServiceCallback iVideoServiceCallback2 = this.$callback;
                if (iVideoServiceCallback2 != null) {
                    iVideoServiceCallback2.onFramePicturesLoaded(this.$startTime, null);
                }
            }
        });
        return dVarC;
    }

    public final void installSticker(@NotNull final Sticker sticker, @Nullable String str, boolean z6, @Nullable IInstallStickerCallback iInstallStickerCallback) {
        t.j(sticker, "sticker");
        StickerInfoPack stickerInfoPackObtainInstalledStickerInfo = obtainInstalledStickerInfo(sticker, str == null ? "" : str);
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
        final StickerInfoPack stickerInfoPackConstructFromSticker = StickerInfoPack.constructFromSticker(sticker);
        stickerInfoPackConstructFromSticker.srcImagePath = str;
        this.viewInstallStickerCallbackMap.put(strCreateStickerInstallKey, iInstallStickerCallback);
        g7.b bVar = new g7.b() { // from class: com.narvii.video.services.VideoManager$installSticker$innerCallback$1
            @Override // g7.b
            public void onFail() {
                g7.b.a.a(this);
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

            @Override // g7.b
            public void onStart() {
                g7.b.a.b(this);
                VideoManager.IInstallStickerCallback iInstallStickerCallback3 = (VideoManager.IInstallStickerCallback) this.this$0.viewInstallStickerCallbackMap.get(strCreateStickerInstallKey);
                if (iInstallStickerCallback3 != null) {
                    StickerInfoPack stickerInfoPack = stickerInfoPackConstructFromSticker;
                    t.i(stickerInfoPack, "$stickerInfoPack");
                    iInstallStickerCallback3.onStickerInstallStart(stickerInfoPack);
                }
                VideoManager.IInstallStickerCallback iInstallStickerCallback4 = this.this$0.pageInstallStickerCallback;
                if (iInstallStickerCallback4 != null) {
                    StickerInfoPack stickerInfoPack2 = stickerInfoPackConstructFromSticker;
                    t.i(stickerInfoPack2, "$stickerInfoPack");
                    iInstallStickerCallback4.onStickerInstallStart(stickerInfoPack2);
                }
            }

            @Override // g7.b
            public void onSuccess() {
                g7.b.a.c(this);
                HashMap map = this.this$0.installedStickerMap;
                String str2 = strCreateStickerInstallKey;
                StickerInfoPack stickerInfoPack = stickerInfoPackConstructFromSticker;
                t.i(stickerInfoPack, "$stickerInfoPack");
                map.put(str2, stickerInfoPack);
                VideoManager.IInstallStickerCallback iInstallStickerCallback3 = (VideoManager.IInstallStickerCallback) this.this$0.viewInstallStickerCallbackMap.get(strCreateStickerInstallKey);
                if (iInstallStickerCallback3 != null) {
                    StickerInfoPack stickerInfoPack2 = stickerInfoPackConstructFromSticker;
                    t.i(stickerInfoPack2, "$stickerInfoPack");
                    iInstallStickerCallback3.onStickerInstalled(stickerInfoPack2);
                }
                VideoManager.IInstallStickerCallback iInstallStickerCallback4 = this.this$0.pageInstallStickerCallback;
                if (iInstallStickerCallback4 != null) {
                    StickerInfoPack stickerInfoPack3 = stickerInfoPackConstructFromSticker;
                    t.i(stickerInfoPack3, "$stickerInfoPack");
                    iInstallStickerCallback4.onStickerInstalled(stickerInfoPack3);
                }
                this.this$0.viewInstallStickerCallbackMap.remove(strCreateStickerInstallKey);
            }
        };
        if (!Utils.isWebP(stickerInfoPackConstructFromSticker.srcImagePath)) {
            g7.a aVar = this.delegate;
            Context context = this.ctx.getContext();
            t.i(context, "getContext(...)");
            t.g(stickerInfoPackConstructFromSticker);
            aVar.installSticker(context, stickerInfoPackConstructFromSticker, z6, this.foregroundTaskExecutor, bVar);
            return;
        }
        Activity lastResumedActivity = ((TopActivityService) this.ctx.getService("topActivity")).getLastResumedActivity();
        if (lastResumedActivity != null && !lastResumedActivity.isFinishing()) {
            g7.a aVar2 = this.delegate;
            t.g(stickerInfoPackConstructFromSticker);
            aVar2.installSticker(lastResumedActivity, stickerInfoPackConstructFromSticker, z6, this.backgroundTaskExecutor, bVar);
        } else {
            if (iInstallStickerCallback != null) {
                iInstallStickerCallback.onStickerInstallFailed(sticker);
            }
            IInstallStickerCallback iInstallStickerCallback3 = this.pageInstallStickerCallback;
            if (iInstallStickerCallback3 != null) {
                iInstallStickerCallback3.onStickerInstallFailed(sticker);
            }
        }
    }

    @Nullable
    public final g7.d mixBGM_Stage1(@NotNull ArrayList<AVClipInfoPack> sceneVideoList, @NotNull AVClipInfoPack bgm, @NotNull File output, @Nullable IVideoServiceCallback iVideoServiceCallback) {
        t.j(sceneVideoList, "sceneVideoList");
        t.j(bgm, "bgm");
        t.j(output, "output");
        if (bgm.getInputFile() == null) {
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
            return null;
        }
        int iTrimmedDurationInMs = 0;
        for (AVClipInfoPack aVClipInfoPack : sceneVideoList) {
            if (aVClipInfoPack.getInputFile() == null) {
                if (iVideoServiceCallback != null) {
                    iVideoServiceCallback.onActionFailed(null);
                }
                return null;
            }
            iTrimmedDurationInMs += aVClipInfoPack.trimmedDurationInMs();
        }
        sceneVideoList.add(0, bgm);
        File file = new File(output.getParent(), "silent.mp4");
        g7.d dVarC = new g7.d.a.C0381a(bgm, file, 256).e(iTrimmedDurationInMs).c();
        this.delegate.execute(dVarC, this.backgroundTaskExecutor, new C05771(iVideoServiceCallback, file, output, sceneVideoList, this));
        return dVarC;
    }

    @Nullable
    public final StickerInfoPack obtainInstalledStickerInfo(@NotNull Sticker sticker, @Nullable String str) {
        t.j(sticker, "sticker");
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
        StickerInfoPack stickerInfoPackConstructFromSticker = StickerInfoPack.constructFromSticker(sticker);
        stickerInfoPackConstructFromSticker.srcImagePath = str;
        g7.a aVar = this.delegate;
        t.g(stickerInfoPackConstructFromSticker);
        File stickerCopiedSrcFile = aVar.getStickerCopiedSrcFile(stickerInfoPackConstructFromSticker);
        File targetStickerInstallFile = this.delegate.getTargetStickerInstallFile(stickerInfoPackConstructFromSticker);
        if (stickerCopiedSrcFile == null || !stickerCopiedSrcFile.exists() || targetStickerInstallFile == null || !targetStickerInstallFile.exists() || !this.delegate.hasStickerTemplatedInstalled(stickerInfoPackConstructFromSticker)) {
            return null;
        }
        stickerInfoPackConstructFromSticker.srcImagePath = stickerCopiedSrcFile.getAbsolutePath();
        stickerInfoPackConstructFromSticker.installedPath = targetStickerInstallFile.getAbsolutePath();
        this.installedStickerMap.put(strCreateStickerInstallKey, stickerInfoPackConstructFromSticker);
        return stickerInfoPackConstructFromSticker;
    }

    public final void onLocalStickerCacheCleared() {
        this.installedStickerMap.clear();
        this.delegate.onLocalStickerCacheCleared();
    }

    public final void removeAllViewInstallStickerCallback() {
        this.viewInstallStickerCallbackMap.clear();
    }

    public final void removeViewInstallCollectionCallbacks(@NotNull String collectionId) {
        t.j(collectionId, "collectionId");
        Iterator<Map.Entry<String, IInstallStickerCallback>> it = this.viewInstallStickerCallbackMap.entrySet().iterator();
        while (it.hasNext()) {
            if (kotlin.text.u.N(it.next().getKey(), collectionId, true)) {
                it.remove();
            }
        }
    }

    public final void removeViewInstallStickerCallback(@NotNull Sticker sticker) {
        t.j(sticker, "sticker");
        this.viewInstallStickerCallbackMap.remove(createStickerInstallKey(sticker));
    }

    public final void abort(@NotNull g7.d task) {
        t.j(task, "task");
        if (task.g()) {
            this.softwareDelegate.abort(task);
        } else {
            this.delegate.abort(task);
        }
    }

    public final void abortAll(@NotNull ArrayList<g7.d> tasks) {
        t.j(tasks, "tasks");
        for (g7.d dVar : tasks) {
            t.g(dVar);
            abort(dVar);
        }
    }

    @Nullable
    public final g7.d encodeSceneOutput(@NotNull ArrayList<AVClipInfoPack> videoClips, @Nullable ArrayList<AVClipInfoPack> arrayList, @NotNull File output, boolean z6, boolean z10, @Nullable IVideoServiceCallback iVideoServiceCallback) {
        ThreadPoolExecutor threadPoolExecutor;
        t.j(videoClips, "videoClips");
        t.j(output, "output");
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
        g7.d.a.C0381a c0381aG = new g7.d.a.C0381a(videoClips, output, 32).e(iTrimmedDurationInMs).I(true).G(z6);
        if (arrayList != null) {
            c0381aG.a(arrayList);
        }
        if (videoClips.size() == 1) {
            c0381aG.M(videoClips.get(0).trimStartInMs());
        }
        g7.d dVarC = c0381aG.c();
        dVarC.N(true);
        dVarC.L(true);
        dVarC.M(true);
        g7.a aVar = this.delegate;
        if (z10) {
            threadPoolExecutor = this.backgroundTaskExecutor;
        } else {
            threadPoolExecutor = this.foregroundTaskExecutor;
        }
        aVar.execute(dVarC, threadPoolExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.encodeSceneOutput.2
            {
                String str = null;
                float f = 0.0f;
                int i10 = 12;
                kotlin.jvm.internal.k kVar = null;
            }
        });
        return dVarC;
    }

    @Nullable
    public final g7.d encodeScenePreview(@NotNull AVClipInfoPack videoClip, @NotNull ArrayList<AVClipInfoPack> audioClips, @NotNull File output, boolean z6, @Nullable IVideoServiceCallback iVideoServiceCallback) {
        boolean z10;
        t.j(videoClip, "videoClip");
        t.j(audioClips, "audioClips");
        t.j(output, "output");
        if (videoClip.getInputFile() == null) {
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
            return null;
        }
        int i10 = 0;
        if (videoClip.orgDurationInMs > 270000) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            Iterator<AVClipInfoPack> it = audioClips.iterator();
            while (it.hasNext()) {
                it.next().startOffsetToMainTrackInMs -= videoClip.trimStartInMs;
            }
        }
        g7.d.a.C0381a c0381aG = new g7.d.a.C0381a(videoClip, output, 32).a(audioClips).G(z6);
        if (z10) {
            c0381aG.M(videoClip.trimStartInMs).e(Math.min(videoClip.trimmedDurationInMs(), 15000));
        }
        g7.d dVarC = c0381aG.c();
        dVarC.N(z10);
        dVarC.L(true);
        dVarC.M(z10);
        if (!z10) {
            i10 = videoClip.trimStartInMs;
        }
        videoClip.previewStartInMs = i10;
        this.delegate.execute(dVarC, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.encodeScenePreview.1
            {
                String str = null;
                float f = 0.0f;
                int i11 = 12;
                kotlin.jvm.internal.k kVar = null;
            }
        });
        return dVarC;
    }

    @Nullable
    public final g7.d mixBGM_Stage2(@NotNull AVClipInfoPack video, @NotNull AVClipInfoPack mixedAudio, @NotNull File output, int i10, @Nullable IVideoServiceCallback iVideoServiceCallback) {
        t.j(video, "video");
        t.j(mixedAudio, "mixedAudio");
        t.j(output, "output");
        if (video.getInputFile() != null && mixedAudio.getInputFile() != null) {
            File inputFile = mixedAudio.getInputFile();
            t.g(inputFile);
            File file = new File(inputFile.getParent(), "audioPiece_" + i10 + ".mp4");
            if (file.exists()) {
                file.delete();
            }
            File absoluteFile = file.getAbsoluteFile();
            t.i(absoluteFile, "getAbsoluteFile(...)");
            g7.d dVarC = new g7.d.a.C0381a(mixedAudio, absoluteFile, 8).b(true).f(true).M(mixedAudio.trimStartInMs).e(mixedAudio.trimmedDurationInMs()).c();
            this.delegate.execute(dVarC, this.backgroundTaskExecutor, new C05781(iVideoServiceCallback, file, video, output, this));
            return dVarC;
        }
        if (iVideoServiceCallback != null) {
            iVideoServiceCallback.onActionFailed(null);
        }
        return null;
    }

    @Nullable
    public final g7.d simpleAVMix(@NotNull AVClipInfoPack videoTrackClip, @NotNull List<? extends AVClipInfoPack> audioTrackClips, @NotNull File output, @Nullable IVideoServiceCallback iVideoServiceCallback, boolean z6) {
        t.j(videoTrackClip, "videoTrackClip");
        t.j(audioTrackClips, "audioTrackClips");
        t.j(output, "output");
        if (videoTrackClip.getInputFile() == null) {
            if (iVideoServiceCallback != null) {
                iVideoServiceCallback.onActionFailed(null);
            }
            return null;
        }
        g7.d dVarC = new g7.d.a.C0381a(videoTrackClip, output, 128).a(audioTrackClips).c();
        dVarC.J(z6);
        if (z6) {
            this.softwareDelegate.execute(dVarC, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.simpleAVMix.1
                {
                    String str = null;
                    float f = 0.0f;
                    int i10 = 12;
                    kotlin.jvm.internal.k kVar = null;
                }
            });
        } else {
            this.delegate.execute(dVarC, this.backgroundTaskExecutor, new SimpleEditorExecuteCallbackImpl(this, iVideoServiceCallback, output) { // from class: com.narvii.video.services.VideoManager.simpleAVMix.2
                {
                    String str = null;
                    float f = 0.0f;
                    int i10 = 12;
                    kotlin.jvm.internal.k kVar = null;
                }
            });
        }
        return dVarC;
    }
}
