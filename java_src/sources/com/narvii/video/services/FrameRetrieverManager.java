package com.narvii.video.services;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Handler;
import android.os.Looper;
import com.narvii.app.NVContext;
import com.narvii.editors.ffmpeg.FFmpegJni;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import com.narvii.util.image.BitmapUtils;
import com.narvii.video.interfaces.IAVClipInfoPack;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.collections.x;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.o;

/* JADX INFO: loaded from: classes4.dex */
public final class FrameRetrieverManager {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private static FrameRetrieverManager frameRetrieverManagerInstance;
    private final ThreadPoolExecutor audioWaveExecutor;
    private final ThreadPoolExecutor audioWaveHunterExecutor;

    @NotNull
    private final w7.m cachedBitmapForFrames$delegate;

    @NotNull
    private final w7.m cachedBitmapForStaticImages$delegate;

    @NotNull
    private final HashMap<FrameRetrieveConfig, IVideoServiceCallback> callbackList;

    @NotNull
    private final NVContext ctx;
    private final ThreadPoolExecutor frameHunterExecutor;
    private float frameRetrieveIntervalInMs;
    private ConcurrentHashMap<String, Boolean> frameSectionLoadFlags;
    private int frameSectionSize;

    @NotNull
    private final ConcurrentLinkedQueue<String> inProcessFiles;
    private boolean initialized;
    private boolean isForAudioWave;
    private boolean keyframeOnly;
    private final int maxCacheFileCount;
    private int maxCacheFrameCount;
    private final int maxThreadCountForSingleInput;

    @NotNull
    private final g7.a mediaRetriever;
    private File outputFolder;

    @NotNull
    private final ConcurrentHashMap<String, ConcurrentLinkedQueue<FrameRetrieveConfig>> requestList;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void dispatchBitmap$lambda$0(String input, int i10, Bitmap bitmap) {
            t.j(input, "$input");
            FrameRetrieverManager frameRetrieverManagerInstance = FrameRetrieverManager.Companion.getFrameRetrieverManagerInstance();
            if (frameRetrieverManagerInstance != null) {
                frameRetrieverManagerInstance.dispatchBitmapResult(input, i10, bitmap);
            }
        }

        public final void dispatchBitmap(@NotNull final String input, final int i10, @Nullable final Bitmap bitmap) {
            t.j(input, "input");
            Utils.post(new Runnable() { // from class: com.narvii.video.services.e
                @Override // java.lang.Runnable
                public final void run() {
                    FrameRetrieverManager.Companion.dispatchBitmap$lambda$0(input, i10, bitmap);
                }
            });
        }

        @Nullable
        public final FrameRetrieveConfig pollNextTask(@NotNull String input) {
            t.j(input, "input");
            FrameRetrieverManager frameRetrieverManagerInstance = getFrameRetrieverManagerInstance();
            if (frameRetrieverManagerInstance != null) {
                return frameRetrieverManagerInstance.pollNextRetrieveTask(input);
            }
            return null;
        }

        @Nullable
        public final FrameRetrieverManager getFrameRetrieverManagerInstance() {
            return FrameRetrieverManager.frameRetrieverManagerInstance;
        }

        public final void setFrameRetrieverManagerInstance(@Nullable FrameRetrieverManager frameRetrieverManager) {
            FrameRetrieverManager.frameRetrieverManagerInstance = frameRetrieverManager;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class FrameHunter implements Runnable {
        private final boolean bitmapDecoding;

        @NotNull
        private final IVideoServiceCallback callback;
        private final int frameTime;

        @NotNull
        private final Handler handler;

        @NotNull
        private final String prefix;

        @NotNull
        private final File prey;
        private final int sectionIndex;
        final /* synthetic */ FrameRetrieverManager this$0;

        public FrameHunter(@NotNull FrameRetrieverManager frameRetrieverManager, String prefix, int i10, float f, @NotNull boolean z6, IVideoServiceCallback callback) {
            t.j(prefix, "prefix");
            t.j(callback, "callback");
            this.this$0 = frameRetrieverManager;
            this.prefix = prefix;
            this.frameTime = i10;
            this.bitmapDecoding = z6;
            this.callback = callback;
            this.handler = new Handler(Looper.getMainLooper());
            this.sectionIndex = (int) (i10 / (frameRetrieverManager.frameSectionSize * f));
            this.prey = frameRetrieverManager.getFrameFilePathByTime(prefix, i10, f);
        }

        public final boolean getBitmapDecoding() {
            return this.bitmapDecoding;
        }

        @NotNull
        public final IVideoServiceCallback getCallback() {
            return this.callback;
        }

        public final int getFrameTime() {
            return this.frameTime;
        }

        @NotNull
        public final String getPrefix() {
            return this.prefix;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConcurrentHashMap concurrentHashMap = null;
            if (this.prey.exists()) {
                this.handler.removeCallbacks(this);
                final Bitmap bitmapDecodeFile = this.bitmapDecoding ? BitmapFactory.decodeFile(this.prey.getAbsolutePath()) : null;
                Utils.post(new Runnable() { // from class: com.narvii.video.services.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        FrameRetrieverManager.FrameHunter.run$lambda$0(this.f2938a, bitmapDecodeFile);
                    }
                });
                return;
            }
            ConcurrentHashMap concurrentHashMap2 = this.this$0.frameSectionLoadFlags;
            if (concurrentHashMap2 == null) {
                t.B("frameSectionLoadFlags");
            } else {
                concurrentHashMap = concurrentHashMap2;
            }
            if (t.e(concurrentHashMap.get(this.prefix + this.sectionIndex), Boolean.TRUE)) {
                this.handler.postDelayed(this, 50L);
            } else {
                this.handler.removeCallbacks(this);
                Utils.post(new Runnable() { // from class: com.narvii.video.services.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        FrameRetrieverManager.FrameHunter.run$lambda$1(this.f2940a);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void run$lambda$0(FrameHunter this$0, Bitmap bitmap) {
            t.j(this$0, "this$0");
            if (this$0.prey.exists()) {
                if (this$0.bitmapDecoding) {
                    this$0.callback.onFrameBitmapLoaded(this$0.frameTime, bitmap);
                    return;
                } else {
                    this$0.callback.onFramePicturesLoaded(this$0.frameTime, this$0.prey);
                    return;
                }
            }
            this$0.callback.onActionFailed(new Exception("Failed to get frame screenshot"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void run$lambda$1(FrameHunter this$0) {
            t.j(this$0, "this$0");
            this$0.callback.onActionFailed(new Exception("Failed to get frame screenshot"));
        }

        public /* synthetic */ FrameHunter(FrameRetrieverManager frameRetrieverManager, String str, int i10, float f, boolean z6, IVideoServiceCallback iVideoServiceCallback, int i11, kotlin.jvm.internal.k kVar) {
            this(frameRetrieverManager, str, i10, f, (i11 & 8) != 0 ? false : z6, iVideoServiceCallback);
        }
    }

    public static final class FrameRetrieveConfig {

        @Nullable
        private String input;
        private int frameTimeInMs = -1;
        private int realFrameTimeInMs = -1;
        private int callbackId = -1;

        public final int getCallbackId() {
            return this.callbackId;
        }

        public final int getFrameTimeInMs() {
            return this.frameTimeInMs;
        }

        @Nullable
        public final String getInput() {
            return this.input;
        }

        public final int getRealFrameTimeInMs() {
            return this.realFrameTimeInMs;
        }

        public final void setCallbackId(int i10) {
            this.callbackId = i10;
        }

        public final void setFrameTimeInMs(int i10) {
            this.frameTimeInMs = i10;
        }

        public final void setInput(@Nullable String str) {
            this.input = str;
        }

        public final void setRealFrameTimeInMs(int i10) {
            this.realFrameTimeInMs = i10;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof FrameRetrieveConfig) {
                FrameRetrieveConfig frameRetrieveConfig = (FrameRetrieveConfig) obj;
                if (t.e(frameRetrieveConfig.input, this.input) && frameRetrieveConfig.frameTimeInMs == this.frameTimeInMs && frameRetrieveConfig.realFrameTimeInMs == this.realFrameTimeInMs && frameRetrieveConfig.callbackId == this.callbackId) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.input;
            return ((((str != null ? str.hashCode() : 0) * 31) + this.frameTimeInMs) * 31) + this.realFrameTimeInMs;
        }
    }

    public static /* synthetic */ void doClean$default(FrameRetrieverManager frameRetrieverManager, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        frameRetrieverManager.doClean(z6);
    }

    public static /* synthetic */ void initRetriever$default(FrameRetrieverManager frameRetrieverManager, String str, String str2, boolean z6, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = false;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        frameRetrieverManager.initRetriever(str, str2, z6, z10);
    }

    public static /* synthetic */ void release$default(FrameRetrieverManager frameRetrieverManager, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        frameRetrieverManager.release(z6);
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public final void initRetriever(@NotNull String id, @NotNull String folderSuffix, boolean z6, boolean z10) {
        t.j(id, "id");
        t.j(folderSuffix, "folderSuffix");
        this.keyframeOnly = z6;
        this.isForAudioWave = z10;
        this.frameSectionLoadFlags = new ConcurrentHashMap<>();
        File file = new File(new File(this.ctx.getContext().getExternalCacheDir(), z10 ? "audio_wave_tmp" : "video_frame_tmp"), id + '_' + folderSuffix);
        this.outputFolder = file;
        File file2 = null;
        if (file.exists()) {
            File file3 = this.outputFolder;
            if (file3 == null) {
                t.B("outputFolder");
                file3 = null;
            }
            deleteFiles$default(this, file3, false, 2, null);
        }
        File file4 = this.outputFolder;
        if (file4 == null) {
            t.B("outputFolder");
        } else {
            file2 = file4;
        }
        file2.mkdirs();
        innerInit();
    }

    public final void onResume() {
        frameRetrieverManagerInstance = this;
    }

    public final void retrieveFrame(@NotNull final IAVClipInfoPack input, final int i10, boolean z6, @NotNull final IVideoServiceCallback callback, final int i11, final int i12) {
        t.j(input, "input");
        t.j(callback, "callback");
        if (!Utils.isPNG(input.inputPath()) && !Utils.isJPG(input.inputPath()) && !Utils.isBMP(input.inputPath())) {
            if (!this.isForAudioWave) {
                offerRetrieveTask(input, i10, i11, i12, callback);
                return;
            }
            final String clipInputName$default = IAVClipInfoPack.DefaultImpls.getClipInputName$default(input, false, 1, null);
            final FrameHunter frameHunter = new FrameHunter(this, clipInputName$default, i10, this.frameRetrieveIntervalInMs, z6, callback);
            if (isFrameProcessed(clipInputName$default, i10, this.frameRetrieveIntervalInMs)) {
                frameHunter.run();
                return;
            } else {
                this.audioWaveHunterExecutor.execute(new Runnable() { // from class: com.narvii.video.services.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        FrameRetrieverManager.retrieveFrame$lambda$14(this.f2932a, clipInputName$default, i10, input, i11, i12, frameHunter);
                    }
                });
                return;
            }
        }
        if (z6) {
            if (getCachedBitmapForStaticImages().containsKey(input.inputPath())) {
                callback.onFrameBitmapLoaded(i10, getCachedBitmapForStaticImages().get(input.inputPath()));
                return;
            } else {
                this.frameHunterExecutor.execute(new Runnable() { // from class: com.narvii.video.services.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        FrameRetrieverManager.retrieveFrame$lambda$12(input, i11, i12, this, callback, i10);
                    }
                });
                return;
            }
        }
        String strInputPath = input.inputPath();
        if (strInputPath != null) {
            callback.onFramePicturesLoaded(i10, new File(strInputPath));
        }
    }

    public final void setFrameRetrieveInterval(float f) {
        this.frameRetrieveIntervalInMs = f;
        float f6 = 1000.0f / f;
        int i10 = 1;
        if (!this.isForAudioWave && f6 > 1.0f) {
            i10 = 6;
        }
        this.frameSectionSize = i10;
    }

    public FrameRetrieverManager(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        this.maxThreadCountForSingleInput = Math.min(Utils.getCoreThreadCount() - 1, 4);
        this.maxCacheFileCount = 210;
        this.frameRetrieveIntervalInMs = 1.0f;
        g7.e.a aVar = g7.e.Companion;
        Context context = ctx.getContext();
        t.i(context, "getContext(...)");
        this.mediaRetriever = aVar.b(context);
        this.frameHunterExecutor = Utils.createThreadPoolExecutor(Utils.getCoreThreadCount() - 1, "Frame hunter thread");
        this.audioWaveHunterExecutor = Utils.createThreadPoolExecutor(1, "Audio frame hunter thread");
        this.audioWaveExecutor = Utils.createThreadPoolExecutor(1, "Audio wave retriever thread");
        this.requestList = new ConcurrentHashMap<>();
        this.callbackList = new HashMap<>();
        this.inProcessFiles = new ConcurrentLinkedQueue<>();
        this.cachedBitmapForStaticImages$delegate = o.a(FrameRetrieverManager$cachedBitmapForStaticImages$2.INSTANCE);
        this.cachedBitmapForFrames$delegate = o.a(FrameRetrieverManager$cachedBitmapForFrames$2.INSTANCE);
    }

    static /* synthetic */ void deleteFiles$default(FrameRetrieverManager frameRetrieverManager, File file, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        frameRetrieverManager.deleteFiles(file, z6);
    }

    private final LinkedHashMap<String, Bitmap> getCachedBitmapForFrames() {
        return (LinkedHashMap) this.cachedBitmapForFrames$delegate.getValue();
    }

    private final HashMap<String, Bitmap> getCachedBitmapForStaticImages() {
        return (HashMap) this.cachedBitmapForStaticImages$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getFrameFilePathByTime(String str, int i10, float f) {
        String string;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        float f6 = i10;
        sb.append((int) (f6 / (this.frameSectionSize * f)));
        String string2 = sb.toString();
        if (this.isForAudioWave) {
            string = string2 + "/wave.jpg";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string2);
            sb2.append("/frame_");
            u0 u0Var = u0.INSTANCE;
            String str2 = String.format(Locale.US, "%05d", Arrays.copyOf(new Object[]{Integer.valueOf((((int) (((double) (f6 / f)) + 0.5d)) % this.frameSectionSize) + 1)}, 1));
            t.i(str2, "format(...)");
            sb2.append(str2);
            sb2.append(".jpg");
            string = sb2.toString();
        }
        File file = this.outputFolder;
        if (file == null) {
            t.B("outputFolder");
            file = null;
        }
        return new File(file, string);
    }

    public static /* synthetic */ void initRetriever$default(FrameRetrieverManager frameRetrieverManager, String str, boolean z6, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        frameRetrieverManager.initRetriever(str, z6, z10);
    }

    private final void innerInit() {
        Object systemService = this.ctx.getContext().getSystemService("activity");
        t.h(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        int memoryClass = (((ActivityManager) systemService).getMemoryClass() * 1048576) / 10;
        int dimensionPixelSize = this.ctx.getContext().getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_height);
        this.maxCacheFrameCount = memoryClass / ((dimensionPixelSize * dimensionPixelSize) * 8);
        this.frameHunterExecutor.prestartAllCoreThreads();
        this.initialized = true;
        frameRetrieverManagerInstance = this;
    }

    private final boolean isFrameProcessed(String str, int i10, float f) {
        String str2 = str + ((int) (i10 / (this.frameSectionSize * f)));
        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.frameSectionLoadFlags;
        if (concurrentHashMap == null) {
            t.B("frameSectionLoadFlags");
            concurrentHashMap = null;
        }
        Boolean bool = concurrentHashMap.get(str2);
        if (bool == null) {
            bool = Boolean.FALSE;
        }
        return bool.booleanValue() || getFrameFilePathByTime(str, i10, f).exists();
    }

    static /* synthetic */ boolean isFrameProcessed$default(FrameRetrieverManager frameRetrieverManager, String str, int i10, float f, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            f = frameRetrieverManager.frameRetrieveIntervalInMs;
        }
        return frameRetrieverManager.isFrameProcessed(str, i10, f);
    }

    private final void offerRetrieveTask(final IAVClipInfoPack iAVClipInfoPack, int i10, final int i11, final int i12, IVideoServiceCallback iVideoServiceCallback) {
        FrameRetrieveConfig frameRetrieveConfig = new FrameRetrieveConfig();
        frameRetrieveConfig.setInput(iAVClipInfoPack.inputPath());
        frameRetrieveConfig.setFrameTimeInMs(i10);
        frameRetrieveConfig.setRealFrameTimeInMs((int) (((double) i10) * iAVClipInfoPack.speed()));
        frameRetrieveConfig.setCallbackId(iVideoServiceCallback.hashCode());
        Bitmap bitmap = getCachedBitmapForFrames().get(iAVClipInfoPack.inputPath() + frameRetrieveConfig.getRealFrameTimeInMs());
        if (bitmap != null) {
            iVideoServiceCallback.onFrameBitmapLoaded(i10, bitmap);
            return;
        }
        if (!this.requestList.containsKey(iAVClipInfoPack.inputPath()) || this.requestList.get(iAVClipInfoPack.inputPath()) == null) {
            ConcurrentLinkedQueue<FrameRetrieveConfig> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
            concurrentLinkedQueue.add(frameRetrieveConfig);
            String strInputPath = iAVClipInfoPack.inputPath();
            if (strInputPath != null) {
                this.requestList.put(strInputPath, concurrentLinkedQueue);
            }
        } else {
            ConcurrentLinkedQueue<FrameRetrieveConfig> concurrentLinkedQueue2 = this.requestList.get(iAVClipInfoPack.inputPath());
            t.g(concurrentLinkedQueue2);
            concurrentLinkedQueue2.add(frameRetrieveConfig);
        }
        this.callbackList.put(frameRetrieveConfig, iVideoServiceCallback);
        Iterator<String> it = this.inProcessFiles.iterator();
        int i13 = 0;
        while (it.hasNext()) {
            if (t.e(it.next(), iAVClipInfoPack.inputPath())) {
                i13++;
            }
        }
        if (i13 < this.maxThreadCountForSingleInput) {
            this.inProcessFiles.add(iAVClipInfoPack.inputPath());
            this.frameHunterExecutor.execute(new Runnable() { // from class: com.narvii.video.services.a
                @Override // java.lang.Runnable
                public final void run() {
                    FrameRetrieverManager.offerRetrieveTask$lambda$1(iAVClipInfoPack, i11, i12, this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void offerRetrieveTask$lambda$1(IAVClipInfoPack input, int i10, int i11, FrameRetrieverManager this$0) {
        t.j(input, "$input");
        t.j(this$0, "this$0");
        FFmpegJni.executeFrameRetrieving(input.inputPath(), i10, i11);
        this$0.inProcessFiles.remove(input.inputPath());
    }

    public static /* synthetic */ void retrieveFrame$default(FrameRetrieverManager frameRetrieverManager, IAVClipInfoPack iAVClipInfoPack, int i10, boolean z6, IVideoServiceCallback iVideoServiceCallback, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            z6 = true;
        }
        frameRetrieverManager.retrieveFrame(iAVClipInfoPack, i10, z6, iVideoServiceCallback, (i13 & 16) != 0 ? -1 : i11, (i13 & 32) != 0 ? -1 : i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void retrieveFrame$lambda$12(IAVClipInfoPack input, int i10, int i11, FrameRetrieverManager this$0, final IVideoServiceCallback callback, final int i12) {
        t.j(input, "$input");
        t.j(this$0, "this$0");
        t.j(callback, "$callback");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(input.inputPath(), options);
        options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i10, i11);
        options.inJustDecodeBounds = false;
        final Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(input.inputPath(), options);
        int imageRotation = BitmapUtils.readImageRotation(input.inputPath());
        if (imageRotation != 0) {
            Matrix matrix = new Matrix();
            matrix.postRotate(imageRotation);
            bitmapDecodeFile = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, false);
        }
        String strInputPath = input.inputPath();
        if (strInputPath != null) {
            HashMap<String, Bitmap> cachedBitmapForStaticImages = this$0.getCachedBitmapForStaticImages();
            t.g(bitmapDecodeFile);
            cachedBitmapForStaticImages.put(strInputPath, bitmapDecodeFile);
        }
        Utils.post(new Runnable() { // from class: com.narvii.video.services.b
            @Override // java.lang.Runnable
            public final void run() {
                FrameRetrieverManager.retrieveFrame$lambda$12$lambda$11(callback, i12, bitmapDecodeFile);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void retrieveFrame$lambda$12$lambda$11(IVideoServiceCallback callback, int i10, Bitmap bitmap) {
        t.j(callback, "$callback");
        callback.onFrameBitmapLoaded(i10, bitmap);
    }

    private final void tryTrimCachedFrames() {
        int length;
        int iIntValue;
        File file = this.outputFolder;
        File file2 = null;
        if (file == null) {
            t.B("outputFolder");
            file = null;
        }
        if (file.exists()) {
            n0 n0Var = new n0();
            File file3 = this.outputFolder;
            if (file3 == null) {
                t.B("outputFolder");
                file3 = null;
            }
            File[] fileArrListFiles = file3.listFiles();
            if (fileArrListFiles != null) {
                length = 0;
                for (File file4 : fileArrListFiles) {
                    String[] list = file4.list();
                    length += list != null ? list.length : 0;
                }
            } else {
                length = 0;
            }
            n0Var.element = length;
            if (length >= this.maxCacheFileCount) {
                synchronized (this) {
                    try {
                        File file5 = this.outputFolder;
                        if (file5 == null) {
                            t.B("outputFolder");
                            file5 = null;
                        }
                        File[] fileArrListFiles2 = file5.listFiles();
                        if (fileArrListFiles2 != null) {
                            t.g(fileArrListFiles2);
                            int length2 = 0;
                            for (File file6 : fileArrListFiles2) {
                                String[] list2 = file6.list();
                                length2 += list2 != null ? list2.length : 0;
                            }
                            iIntValue = Integer.valueOf(length2).intValue();
                        } else {
                            iIntValue = 0;
                        }
                        n0Var.element = iIntValue;
                        if (iIntValue >= this.maxCacheFileCount) {
                            ArrayList<String> arrayList = new ArrayList();
                            ConcurrentHashMap<String, Boolean> concurrentHashMap = this.frameSectionLoadFlags;
                            if (concurrentHashMap == null) {
                                t.B("frameSectionLoadFlags");
                                concurrentHashMap = null;
                            }
                            Enumeration<String> enumerationKeys = concurrentHashMap.keys();
                            t.i(enumerationKeys, "keys(...)");
                            Iterator itA = x.A(enumerationKeys);
                            while (itA.hasNext()) {
                                String str = (String) itA.next();
                                File file7 = this.outputFolder;
                                if (file7 == null) {
                                    t.B("outputFolder");
                                    file7 = null;
                                }
                                File file8 = new File(file7, str);
                                ConcurrentHashMap<String, Boolean> concurrentHashMap2 = this.frameSectionLoadFlags;
                                if (concurrentHashMap2 == null) {
                                    t.B("frameSectionLoadFlags");
                                    concurrentHashMap2 = null;
                                }
                                if (t.e(concurrentHashMap2.get(str), Boolean.TRUE) && file8.exists()) {
                                    String[] list3 = file8.list();
                                    if ((list3 != null ? list3.length : 0) >= this.frameSectionSize) {
                                        arrayList.add(str);
                                        int i10 = n0Var.element;
                                        String[] list4 = file8.list();
                                        int length3 = i10 - (list4 != null ? list4.length : 0);
                                        n0Var.element = length3;
                                        if (length3 < this.maxCacheFileCount) {
                                            break;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            }
                            if (arrayList.isEmpty()) {
                                File file9 = this.outputFolder;
                                if (file9 == null) {
                                    t.B("outputFolder");
                                } else {
                                    file2 = file9;
                                }
                                deleteFiles(file2, false);
                                return;
                            }
                            for (String str2 : arrayList) {
                                ConcurrentHashMap<String, Boolean> concurrentHashMap3 = this.frameSectionLoadFlags;
                                if (concurrentHashMap3 == null) {
                                    t.B("frameSectionLoadFlags");
                                    concurrentHashMap3 = null;
                                }
                                t.g(str2);
                                concurrentHashMap3.put(str2, Boolean.FALSE);
                                File file10 = this.outputFolder;
                                if (file10 == null) {
                                    t.B("outputFolder");
                                    file10 = null;
                                }
                                deleteFiles(new File(file10, str2), false);
                            }
                        }
                        l0 l0Var = l0.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    public final void abortFlyingFrameRetrievers() {
        if (this.initialized) {
            this.callbackList.clear();
            this.requestList.clear();
            ConcurrentHashMap<String, Boolean> concurrentHashMap = this.frameSectionLoadFlags;
            if (concurrentHashMap == null) {
                t.B("frameSectionLoadFlags");
                concurrentHashMap = null;
            }
            concurrentHashMap.clear();
            BlockingQueue<Runnable> queue = this.frameHunterExecutor.getQueue();
            if (queue != null) {
                queue.clear();
            }
            BlockingQueue<Runnable> queue2 = this.audioWaveExecutor.getQueue();
            if (queue2 != null) {
                queue2.clear();
            }
            BlockingQueue<Runnable> queue3 = this.audioWaveHunterExecutor.getQueue();
            if (queue3 != null) {
                queue3.clear();
            }
            this.mediaRetriever.abortAll(false);
        }
    }

    public final void dispatchBitmapResult(@NotNull String input, int i10, @Nullable Bitmap bitmap) {
        FrameRetrieveConfig next;
        t.j(input, "input");
        String str = input + i10;
        if (!getCachedBitmapForFrames().containsKey(str) && bitmap != null) {
            Iterator<Map.Entry<String, Bitmap>> it = getCachedBitmapForFrames().entrySet().iterator();
            for (int size = getCachedBitmapForFrames().size() - this.maxCacheFrameCount; size >= 0 && it.hasNext(); size--) {
                it.next();
                it.remove();
            }
            getCachedBitmapForFrames().put(str, bitmap);
        }
        Iterator<FrameRetrieveConfig> it2 = this.callbackList.keySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            if (t.e(next.getInput(), input) && next.getRealFrameTimeInMs() == i10) {
                break;
            }
        }
        if (next != null) {
            IVideoServiceCallback iVideoServiceCallbackRemove = this.callbackList.remove(next);
            if (bitmap == null) {
                if (iVideoServiceCallbackRemove != null) {
                    iVideoServiceCallbackRemove.onActionFailed(null);
                }
            } else if (iVideoServiceCallbackRemove != null) {
                iVideoServiceCallbackRemove.onFrameBitmapLoaded(next.getFrameTimeInMs(), bitmap);
            }
        }
    }

    public final void doClean(boolean z6) {
        if (this.initialized) {
            this.inProcessFiles.clear();
            this.callbackList.clear();
            this.requestList.clear();
            getCachedBitmapForFrames().clear();
            getCachedBitmapForStaticImages().clear();
            if (z6) {
                File file = this.outputFolder;
                if (file == null) {
                    t.B("outputFolder");
                    file = null;
                }
                if (file.exists()) {
                    File file2 = this.outputFolder;
                    if (file2 == null) {
                        t.B("outputFolder");
                        file2 = null;
                    }
                    deleteFiles$default(this, file2, false, 2, null);
                }
            }
        }
    }

    @Nullable
    public final String getOutputFolderPath() {
        File file = null;
        if (!this.initialized) {
            return null;
        }
        File file2 = this.outputFolder;
        if (file2 == null) {
            t.B("outputFolder");
        } else {
            file = file2;
        }
        return file.getAbsolutePath();
    }

    @Nullable
    public final FrameRetrieveConfig pollNextRetrieveTask(@NotNull String input) {
        t.j(input, "input");
        ConcurrentLinkedQueue<FrameRetrieveConfig> concurrentLinkedQueue = this.requestList.get(input);
        if (concurrentLinkedQueue != null) {
            return concurrentLinkedQueue.poll();
        }
        return null;
    }

    private final void deleteFiles(File file, boolean z6) {
        try {
            if (!file.exists()) {
                return;
            }
            if (file.isDirectory() && file.listFiles() != null) {
                File[] fileArrListFiles = file.listFiles();
                t.g(fileArrListFiles);
                for (File file2 : fileArrListFiles) {
                    t.g(file2);
                    deleteFiles$default(this, file2, false, 2, null);
                }
                if (z6) {
                    file.delete();
                    return;
                }
                return;
            }
            file.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void retrieveFrame$lambda$14(final FrameRetrieverManager this$0, String prefix, int i10, IAVClipInfoPack input, int i11, int i12, FrameHunter frameHunter) {
        String str;
        float f;
        g7.d.a.C0381a c0381aK;
        t.j(this$0, "this$0");
        t.j(prefix, "$prefix");
        t.j(input, "$input");
        t.j(frameHunter, "$frameHunter");
        if (!this$0.isFrameProcessed(prefix, i10, this$0.frameRetrieveIntervalInMs)) {
            int i13 = (int) (i10 / (this$0.frameSectionSize * this$0.frameRetrieveIntervalInMs));
            String str2 = prefix + i13;
            ConcurrentHashMap<String, Boolean> concurrentHashMap = this$0.frameSectionLoadFlags;
            if (concurrentHashMap == null) {
                t.B("frameSectionLoadFlags");
                concurrentHashMap = null;
            }
            concurrentHashMap.put(str2, Boolean.TRUE);
            this$0.tryTrimCachedFrames();
            File file = this$0.outputFolder;
            if (file == null) {
                t.B("outputFolder");
                file = null;
            }
            final File file2 = new File(file, str2);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            if (Utils.isRtl() && this$0.isForAudioWave) {
                str = "wave_tmp.jpg";
            } else if (this$0.isForAudioWave) {
                str = "wave.jpg";
            } else {
                str = "frame_%05d.jpg";
            }
            final File file3 = new File(file2, str);
            if (this$0.isForAudioWave) {
                c0381aK = new g7.d.a.C0381a((AVClipInfoPack) input, file3, 64).e((int) this$0.frameRetrieveIntervalInMs).i(i11).h(i12);
            } else {
                g7.d.a.C0381a c0381aJ = new g7.d.a.C0381a((AVClipInfoPack) input, file3, 16).H(this$0.keyframeOnly).J(this$0.frameSectionSize);
                if (this$0.frameSectionSize == 1) {
                    f = 1.0f;
                } else {
                    f = 1000.0f / this$0.frameRetrieveIntervalInMs;
                }
                c0381aK = c0381aJ.K(f);
            }
            if (i13 > 0) {
                c0381aK.M(i10);
            }
            if (this$0.isForAudioWave && Utils.isRtl()) {
                this$0.mediaRetriever.execute(c0381aK.c(), this$0.audioWaveExecutor, new g7.c() { // from class: com.narvii.video.services.FrameRetrieverManager$retrieveFrame$3$1
                    @Override // g7.c
                    public void onCancel() {
                        g7.c.a.a(this);
                    }

                    @Override // g7.b
                    public void onFail() {
                        g7.c.a.b(this);
                    }

                    @Override // g7.c
                    public void onProgress(float f6) {
                        g7.c.a.c(this, f6);
                    }

                    @Override // g7.b
                    public void onStart() {
                        g7.c.a.d(this);
                    }

                    @Override // g7.b
                    public void onSuccess() {
                        g7.c.a.e(this);
                        AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                        aVClipInfoPack.inputPath = file3.getAbsolutePath();
                        this$0.mediaRetriever.execute(new g7.d.a.C0381a(aVClipInfoPack, new File(file2, "wave.jpg"), 512).F(true).c(), this$0.audioWaveExecutor, null);
                    }
                });
            } else {
                this$0.mediaRetriever.execute(c0381aK.c(), this$0.audioWaveExecutor, null);
            }
        }
        frameHunter.run();
    }

    public final void release(boolean z6) {
        abortFlyingFrameRetrievers();
        doClean(z6);
    }

    public final void initRetriever(@NotNull String outputFolderPath, boolean z6, boolean z10) {
        t.j(outputFolderPath, "outputFolderPath");
        this.keyframeOnly = z6;
        this.isForAudioWave = z10;
        this.frameSectionLoadFlags = new ConcurrentHashMap<>();
        File file = new File(outputFolderPath);
        this.outputFolder = file;
        if (!file.exists()) {
            File file2 = this.outputFolder;
            if (file2 == null) {
                t.B("outputFolder");
                file2 = null;
            }
            file2.mkdirs();
        }
        innerInit();
    }
}
