package com.narvii.video.services;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
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
import ffmpeg.base.IEditor;
import ffmpeg.base.IEditorExecuteCallback;
import ffmpeg.base.MediaEditingConfig;
import ffmpeg.base.NVEditor;
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
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KProperty;

/* compiled from: FrameRetrieverManager.kt */
/* loaded from: classes3.dex */
public final class FrameRetrieverManager {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FrameRetrieverManager.class), "cachedBitmapForStaticImages", "getCachedBitmapForStaticImages()Ljava/util/HashMap;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FrameRetrieverManager.class), "cachedBitmapForFrames", "getCachedBitmapForFrames()Ljava/util/LinkedHashMap;"))};
    public static final Companion Companion = new Companion(null);
    private static FrameRetrieverManager frameRetrieverManagerInstance;
    private final ThreadPoolExecutor audioWaveExecutor;
    private final ThreadPoolExecutor audioWaveHunterExecutor;
    private final Lazy cachedBitmapForFrames$delegate;
    private final Lazy cachedBitmapForStaticImages$delegate;
    private final HashMap<FrameRetrieveConfig, IVideoServiceCallback> callbackList;
    private final NVContext ctx;
    private final ThreadPoolExecutor frameHunterExecutor;
    private float frameRetrieveIntervalInMs;
    private ConcurrentHashMap<String, Boolean> frameSectionLoadFlags;
    private int frameSectionSize;
    private final ConcurrentLinkedQueue<String> inProcessFiles;
    private boolean initialized;
    private boolean isForAudioWave;
    private boolean keyframeOnly;
    private final int maxCacheFileCount;
    private int maxCacheFrameCount;
    private final int maxThreadCountForSingleInput;
    private final IEditor mediaRetriever;
    private File outputFolder;
    private final ConcurrentHashMap<String, ConcurrentLinkedQueue<FrameRetrieveConfig>> requestList;

    private final LinkedHashMap<String, Bitmap> getCachedBitmapForFrames() {
        Lazy lazy = this.cachedBitmapForFrames$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (LinkedHashMap) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, Bitmap> getCachedBitmapForStaticImages() {
        Lazy lazy = this.cachedBitmapForStaticImages$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (HashMap) lazy.getValue();
    }

    public FrameRetrieverManager(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.maxThreadCountForSingleInput = Math.min(Utils.getCoreThreadCount() - 1, 4);
        this.maxCacheFileCount = 210;
        this.frameRetrieveIntervalInMs = 1.0f;
        NVEditor.Companion companion = NVEditor.Companion;
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        this.mediaRetriever = companion.getSoftwareNVEditor(context);
        this.frameHunterExecutor = Utils.createThreadPoolExecutor(Utils.getCoreThreadCount() - 1, "Frame hunter thread");
        this.audioWaveHunterExecutor = Utils.createThreadPoolExecutor(1, "Audio frame hunter thread");
        this.audioWaveExecutor = Utils.createThreadPoolExecutor(1, "Audio wave retriever thread");
        this.requestList = new ConcurrentHashMap<>();
        this.callbackList = new HashMap<>();
        this.inProcessFiles = new ConcurrentLinkedQueue<>();
        this.cachedBitmapForStaticImages$delegate = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<String, Bitmap>>() { // from class: com.narvii.video.services.FrameRetrieverManager$cachedBitmapForStaticImages$2
            @Override // kotlin.jvm.functions.Function0
            public final HashMap<String, Bitmap> invoke() {
                return new HashMap<>();
            }
        });
        this.cachedBitmapForFrames$delegate = LazyKt__LazyJVMKt.lazy(new Function0<LinkedHashMap<String, Bitmap>>() { // from class: com.narvii.video.services.FrameRetrieverManager$cachedBitmapForFrames$2
            @Override // kotlin.jvm.functions.Function0
            public final LinkedHashMap<String, Bitmap> invoke() {
                return new LinkedHashMap<>();
            }
        });
    }

    public static final /* synthetic */ ConcurrentHashMap access$getFrameSectionLoadFlags$p(FrameRetrieverManager frameRetrieverManager) {
        ConcurrentHashMap<String, Boolean> concurrentHashMap = frameRetrieverManager.frameSectionLoadFlags;
        if (concurrentHashMap != null) {
            return concurrentHashMap;
        }
        Intrinsics.throwUninitializedPropertyAccessException("frameSectionLoadFlags");
        throw null;
    }

    public static final /* synthetic */ File access$getOutputFolder$p(FrameRetrieverManager frameRetrieverManager) {
        File file = frameRetrieverManager.outputFolder;
        if (file != null) {
            return file;
        }
        Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
        throw null;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    /* compiled from: FrameRetrieverManager.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FrameRetrieverManager getFrameRetrieverManagerInstance() {
            return FrameRetrieverManager.frameRetrieverManagerInstance;
        }

        public final void setFrameRetrieverManagerInstance(FrameRetrieverManager frameRetrieverManager) {
            FrameRetrieverManager.frameRetrieverManagerInstance = frameRetrieverManager;
        }

        public final FrameRetrieveConfig pollNextTask(String input) {
            Intrinsics.checkParameterIsNotNull(input, "input");
            FrameRetrieverManager frameRetrieverManagerInstance = getFrameRetrieverManagerInstance();
            if (frameRetrieverManagerInstance != null) {
                return frameRetrieverManagerInstance.pollNextRetrieveTask(input);
            }
            return null;
        }

        public final void dispatchBitmap(final String input, final int i, final Bitmap bitmap) {
            Intrinsics.checkParameterIsNotNull(input, "input");
            Utils.post(new Runnable() { // from class: com.narvii.video.services.FrameRetrieverManager$Companion$dispatchBitmap$1
                @Override // java.lang.Runnable
                public final void run() {
                    FrameRetrieverManager frameRetrieverManagerInstance = FrameRetrieverManager.Companion.getFrameRetrieverManagerInstance();
                    if (frameRetrieverManagerInstance != null) {
                        frameRetrieverManagerInstance.dispatchBitmapResult(input, i, bitmap);
                    }
                }
            });
        }
    }

    /* compiled from: FrameRetrieverManager.kt */
    public static final class FrameRetrieveConfig {
        private String input;
        private int frameTimeInMs = -1;
        private int realFrameTimeInMs = -1;
        private int callbackId = -1;

        public final String getInput() {
            return this.input;
        }

        public final void setInput(String str) {
            this.input = str;
        }

        public final int getFrameTimeInMs() {
            return this.frameTimeInMs;
        }

        public final void setFrameTimeInMs(int i) {
            this.frameTimeInMs = i;
        }

        public final int getRealFrameTimeInMs() {
            return this.realFrameTimeInMs;
        }

        public final void setRealFrameTimeInMs(int i) {
            this.realFrameTimeInMs = i;
        }

        public final int getCallbackId() {
            return this.callbackId;
        }

        public final void setCallbackId(int i) {
            this.callbackId = i;
        }

        public boolean equals(Object obj) {
            if (obj instanceof FrameRetrieveConfig) {
                FrameRetrieveConfig frameRetrieveConfig = (FrameRetrieveConfig) obj;
                if (Intrinsics.areEqual(frameRetrieveConfig.input, this.input) && frameRetrieveConfig.frameTimeInMs == this.frameTimeInMs && frameRetrieveConfig.realFrameTimeInMs == this.realFrameTimeInMs && frameRetrieveConfig.callbackId == this.callbackId) {
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

    private final void offerRetrieveTask(final IAVClipInfoPack iAVClipInfoPack, int i, final int i2, final int i3, IVideoServiceCallback iVideoServiceCallback) {
        FrameRetrieveConfig frameRetrieveConfig = new FrameRetrieveConfig();
        frameRetrieveConfig.setInput(iAVClipInfoPack.inputPath());
        frameRetrieveConfig.setFrameTimeInMs(i);
        double d = i;
        double dSpeed = iAVClipInfoPack.speed();
        Double.isNaN(d);
        frameRetrieveConfig.setRealFrameTimeInMs((int) (d * dSpeed));
        frameRetrieveConfig.setCallbackId(iVideoServiceCallback.hashCode());
        Bitmap bitmap = getCachedBitmapForFrames().get(Intrinsics.stringPlus(iAVClipInfoPack.inputPath(), String.valueOf(frameRetrieveConfig.getRealFrameTimeInMs())));
        if (bitmap != null) {
            iVideoServiceCallback.onFrameBitmapLoaded(i, bitmap);
            return;
        }
        ConcurrentHashMap<String, ConcurrentLinkedQueue<FrameRetrieveConfig>> concurrentHashMap = this.requestList;
        String strInputPath = iAVClipInfoPack.inputPath();
        if (concurrentHashMap == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        }
        if (concurrentHashMap.containsKey(strInputPath) && this.requestList.get(iAVClipInfoPack.inputPath()) != null) {
            ConcurrentLinkedQueue<FrameRetrieveConfig> concurrentLinkedQueue = this.requestList.get(iAVClipInfoPack.inputPath());
            if (concurrentLinkedQueue == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            concurrentLinkedQueue.add(frameRetrieveConfig);
        } else {
            ConcurrentLinkedQueue<FrameRetrieveConfig> concurrentLinkedQueue2 = new ConcurrentLinkedQueue<>();
            concurrentLinkedQueue2.add(frameRetrieveConfig);
            String strInputPath2 = iAVClipInfoPack.inputPath();
            if (strInputPath2 != null) {
                this.requestList.put(strInputPath2, concurrentLinkedQueue2);
            }
        }
        this.callbackList.put(frameRetrieveConfig, iVideoServiceCallback);
        int i4 = 0;
        Iterator<String> it = this.inProcessFiles.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(it.next(), iAVClipInfoPack.inputPath())) {
                i4++;
            }
        }
        if (i4 < this.maxThreadCountForSingleInput) {
            this.inProcessFiles.add(iAVClipInfoPack.inputPath());
            this.frameHunterExecutor.execute(new Runnable() { // from class: com.narvii.video.services.FrameRetrieverManager.offerRetrieveTask.2
                @Override // java.lang.Runnable
                public final void run() {
                    FFmpegJni.executeFrameRetrieving(iAVClipInfoPack.inputPath(), i2, i3);
                    FrameRetrieverManager.this.inProcessFiles.remove(iAVClipInfoPack.inputPath());
                }
            });
        }
    }

    public final void dispatchBitmapResult(String input, int i, Bitmap bitmap) {
        FrameRetrieveConfig next;
        Intrinsics.checkParameterIsNotNull(input, "input");
        String str = input + String.valueOf(i);
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
            if (Intrinsics.areEqual(next.getInput(), input) && next.getRealFrameTimeInMs() == i) {
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

    public final FrameRetrieveConfig pollNextRetrieveTask(String input) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        ConcurrentLinkedQueue<FrameRetrieveConfig> concurrentLinkedQueue = this.requestList.get(input);
        if (concurrentLinkedQueue != null) {
            return concurrentLinkedQueue.poll();
        }
        return null;
    }

    public static /* synthetic */ void initRetriever$default(FrameRetrieverManager frameRetrieverManager, String str, String str2, boolean z, boolean z2, int i, Object obj) throws Resources.NotFoundException {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            z2 = false;
        }
        frameRetrieverManager.initRetriever(str, str2, z, z2);
    }

    public final void initRetriever(String id, String folderSuffix, boolean z, boolean z2) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(id, "id");
        Intrinsics.checkParameterIsNotNull(folderSuffix, "folderSuffix");
        this.keyframeOnly = z;
        this.isForAudioWave = z2;
        this.frameSectionLoadFlags = new ConcurrentHashMap<>();
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        this.outputFolder = new File(new File(context.getExternalCacheDir(), z2 ? "audio_wave_tmp" : "video_frame_tmp"), id + "_" + folderSuffix);
        File file = this.outputFolder;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
            throw null;
        }
        if (file.exists()) {
            File file2 = this.outputFolder;
            if (file2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                throw null;
            }
            deleteFiles$default(this, file2, false, 2, null);
        }
        File file3 = this.outputFolder;
        if (file3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
            throw null;
        }
        file3.mkdirs();
        innerInit();
    }

    public static /* synthetic */ void initRetriever$default(FrameRetrieverManager frameRetrieverManager, String str, boolean z, boolean z2, int i, Object obj) throws Resources.NotFoundException {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        frameRetrieverManager.initRetriever(str, z, z2);
    }

    public final void initRetriever(String outputFolderPath, boolean z, boolean z2) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(outputFolderPath, "outputFolderPath");
        this.keyframeOnly = z;
        this.isForAudioWave = z2;
        this.frameSectionLoadFlags = new ConcurrentHashMap<>();
        this.outputFolder = new File(outputFolderPath);
        File file = this.outputFolder;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
            throw null;
        }
        if (!file.exists()) {
            File file2 = this.outputFolder;
            if (file2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                throw null;
            }
            file2.mkdirs();
        }
        innerInit();
    }

    public final void setFrameRetrieveInterval(float f) {
        this.frameRetrieveIntervalInMs = f;
        float f2 = 1000.0f / this.frameRetrieveIntervalInMs;
        int i = 1;
        if (!this.isForAudioWave && f2 > 1) {
            i = 6;
        }
        this.frameSectionSize = i;
    }

    public final String getOutputFolderPath() {
        if (!this.initialized) {
            return null;
        }
        File file = this.outputFolder;
        if (file != null) {
            return file.getAbsolutePath();
        }
        Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
        throw null;
    }

    public final void abortFlyingFrameRetrievers() {
        if (this.initialized) {
            this.callbackList.clear();
            this.requestList.clear();
            ConcurrentHashMap<String, Boolean> concurrentHashMap = this.frameSectionLoadFlags;
            if (concurrentHashMap == null) {
                Intrinsics.throwUninitializedPropertyAccessException("frameSectionLoadFlags");
                throw null;
            }
            concurrentHashMap.clear();
            ThreadPoolExecutor frameHunterExecutor = this.frameHunterExecutor;
            Intrinsics.checkExpressionValueIsNotNull(frameHunterExecutor, "frameHunterExecutor");
            BlockingQueue<Runnable> queue = frameHunterExecutor.getQueue();
            if (queue != null) {
                queue.clear();
            }
            ThreadPoolExecutor audioWaveExecutor = this.audioWaveExecutor;
            Intrinsics.checkExpressionValueIsNotNull(audioWaveExecutor, "audioWaveExecutor");
            BlockingQueue<Runnable> queue2 = audioWaveExecutor.getQueue();
            if (queue2 != null) {
                queue2.clear();
            }
            ThreadPoolExecutor audioWaveHunterExecutor = this.audioWaveHunterExecutor;
            Intrinsics.checkExpressionValueIsNotNull(audioWaveHunterExecutor, "audioWaveHunterExecutor");
            BlockingQueue<Runnable> queue3 = audioWaveHunterExecutor.getQueue();
            if (queue3 != null) {
                queue3.clear();
            }
            this.mediaRetriever.abortAll(false);
        }
    }

    public static /* synthetic */ void doClean$default(FrameRetrieverManager frameRetrieverManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        frameRetrieverManager.doClean(z);
    }

    public final void doClean(boolean z) {
        if (this.initialized) {
            this.inProcessFiles.clear();
            this.callbackList.clear();
            this.requestList.clear();
            getCachedBitmapForFrames().clear();
            getCachedBitmapForStaticImages().clear();
            if (z) {
                File file = this.outputFolder;
                if (file == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                    throw null;
                }
                if (file.exists()) {
                    File file2 = this.outputFolder;
                    if (file2 != null) {
                        deleteFiles$default(this, file2, false, 2, null);
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                        throw null;
                    }
                }
            }
        }
    }

    public final void onResume() {
        frameRetrieverManagerInstance = this;
    }

    public static /* synthetic */ void release$default(FrameRetrieverManager frameRetrieverManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        frameRetrieverManager.release(z);
    }

    public final void release(boolean z) {
        abortFlyingFrameRetrievers();
        doClean(z);
    }

    private final void innerInit() throws Resources.NotFoundException {
        Object systemService = this.ctx.getContext().getSystemService("activity");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.ActivityManager");
        }
        int memoryClass = (((ActivityManager) systemService).getMemoryClass() * 1048576) / 10;
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_height);
        this.maxCacheFrameCount = memoryClass / ((dimensionPixelSize * dimensionPixelSize) * 8);
        this.frameHunterExecutor.prestartAllCoreThreads();
        this.initialized = true;
        frameRetrieverManagerInstance = this;
    }

    static /* synthetic */ void deleteFiles$default(FrameRetrieverManager frameRetrieverManager, File file, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        frameRetrieverManager.deleteFiles(file, z);
    }

    private final void deleteFiles(File file, boolean z) {
        try {
            if (file.exists()) {
                if (file.isDirectory() && file.listFiles() != null) {
                    for (File file2 : file.listFiles()) {
                        Intrinsics.checkExpressionValueIsNotNull(file2, "file");
                        deleteFiles$default(this, file2, false, 2, null);
                    }
                    if (z) {
                        file.delete();
                        return;
                    }
                    return;
                }
                file.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tryTrimCachedFrames() {
        int length;
        int length2;
        File file = this.outputFolder;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
            throw null;
        }
        if (file.exists()) {
            File file2 = this.outputFolder;
            if (file2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                throw null;
            }
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles != null) {
                length = 0;
                for (File file3 : fileArrListFiles) {
                    String[] list = file3.list();
                    length += list != null ? list.length : 0;
                }
            } else {
                length = 0;
            }
            if (length >= this.maxCacheFileCount) {
                synchronized (this) {
                    File file4 = this.outputFolder;
                    if (file4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                        throw null;
                    }
                    File[] fileArrListFiles2 = file4.listFiles();
                    if (fileArrListFiles2 != null) {
                        length2 = 0;
                        for (File file5 : fileArrListFiles2) {
                            String[] list2 = file5.list();
                            length2 += list2 != null ? list2.length : 0;
                        }
                    } else {
                        length2 = 0;
                    }
                    if (length2 >= this.maxCacheFileCount) {
                        ArrayList arrayList = new ArrayList();
                        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.frameSectionLoadFlags;
                        if (concurrentHashMap == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("frameSectionLoadFlags");
                            throw null;
                        }
                        Enumeration<String> enumerationKeys = concurrentHashMap.keys();
                        Intrinsics.checkExpressionValueIsNotNull(enumerationKeys, "frameSectionLoadFlags.keys()");
                        Iterator it = CollectionsKt__IteratorsJVMKt.iterator(enumerationKeys);
                        while (it.hasNext()) {
                            String str = (String) it.next();
                            File file6 = this.outputFolder;
                            if (file6 != null) {
                                File file7 = new File(file6, str);
                                ConcurrentHashMap<String, Boolean> concurrentHashMap2 = this.frameSectionLoadFlags;
                                if (concurrentHashMap2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("frameSectionLoadFlags");
                                    throw null;
                                }
                                if (Intrinsics.areEqual((Object) concurrentHashMap2.get(str), (Object) true) && file7.exists()) {
                                    String[] list3 = file7.list();
                                    if ((list3 != null ? list3.length : 0) >= this.frameSectionSize) {
                                        arrayList.add(str);
                                        String[] list4 = file7.list();
                                        length2 -= list4 != null ? list4.length : 0;
                                        if (length2 < this.maxCacheFileCount) {
                                            break;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                                throw null;
                            }
                        }
                        if (arrayList.isEmpty()) {
                            File file8 = this.outputFolder;
                            if (file8 != null) {
                                deleteFiles(file8, false);
                                return;
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                                throw null;
                            }
                        }
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            String sectionKey = (String) it2.next();
                            ConcurrentHashMap<String, Boolean> concurrentHashMap3 = this.frameSectionLoadFlags;
                            if (concurrentHashMap3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("frameSectionLoadFlags");
                                throw null;
                            }
                            Intrinsics.checkExpressionValueIsNotNull(sectionKey, "sectionKey");
                            concurrentHashMap3.put(sectionKey, false);
                            File file9 = this.outputFolder;
                            if (file9 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
                                throw null;
                            }
                            deleteFiles(new File(file9, sectionKey), false);
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
    }

    public final void retrieveFrame(final IAVClipInfoPack input, final int i, boolean z, final IVideoServiceCallback callback, final int i2, final int i3) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        if (!Utils.isPNG(input.inputPath()) && !Utils.isJPG(input.inputPath()) && !Utils.isBMP(input.inputPath())) {
            if (this.isForAudioWave) {
                final String clipInputName$default = IAVClipInfoPack.DefaultImpls.getClipInputName$default(input, false, 1, null);
                final FrameHunter frameHunter = new FrameHunter(this, clipInputName$default, i, this.frameRetrieveIntervalInMs, z, callback);
                if (isFrameProcessed(clipInputName$default, i, this.frameRetrieveIntervalInMs)) {
                    frameHunter.run();
                    return;
                } else {
                    this.audioWaveHunterExecutor.execute(new Runnable() { // from class: com.narvii.video.services.FrameRetrieverManager.retrieveFrame.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str;
                            MediaEditingConfig.Companion.Builder builderScreenshotRate;
                            FrameRetrieverManager frameRetrieverManager = FrameRetrieverManager.this;
                            if (!frameRetrieverManager.isFrameProcessed(clipInputName$default, i, frameRetrieverManager.frameRetrieveIntervalInMs)) {
                                int i4 = (int) (i / (FrameRetrieverManager.this.frameSectionSize * FrameRetrieverManager.this.frameRetrieveIntervalInMs));
                                String str2 = clipInputName$default + String.valueOf(i4);
                                FrameRetrieverManager.access$getFrameSectionLoadFlags$p(FrameRetrieverManager.this).put(str2, true);
                                FrameRetrieverManager.this.tryTrimCachedFrames();
                                final File file = new File(FrameRetrieverManager.access$getOutputFolder$p(FrameRetrieverManager.this), str2);
                                if (!file.exists()) {
                                    file.mkdirs();
                                }
                                if (Utils.isRtl() && FrameRetrieverManager.this.isForAudioWave) {
                                    str = "wave_tmp.jpg";
                                } else {
                                    str = FrameRetrieverManager.this.isForAudioWave ? "wave.jpg" : "frame_%05d.jpg";
                                }
                                final File file2 = new File(file, str);
                                if (FrameRetrieverManager.this.isForAudioWave) {
                                    IAVClipInfoPack iAVClipInfoPack = input;
                                    if (iAVClipInfoPack == null) {
                                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.model.AVClipInfoPack");
                                    }
                                    builderScreenshotRate = new MediaEditingConfig.Companion.Builder((AVClipInfoPack) iAVClipInfoPack, file2, 64).duration((int) FrameRetrieverManager.this.frameRetrieveIntervalInMs).frameItemWidth(i2).frameItemHeight(i3);
                                } else {
                                    IAVClipInfoPack iAVClipInfoPack2 = input;
                                    if (iAVClipInfoPack2 == null) {
                                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.model.AVClipInfoPack");
                                    }
                                    builderScreenshotRate = new MediaEditingConfig.Companion.Builder((AVClipInfoPack) iAVClipInfoPack2, file2, 16).keyframeOnlyForScreenshot(FrameRetrieverManager.this.keyframeOnly).screenshotCount(FrameRetrieverManager.this.frameSectionSize).screenshotRate(FrameRetrieverManager.this.frameSectionSize == 1 ? 1.0f : 1000.0f / FrameRetrieverManager.this.frameRetrieveIntervalInMs);
                                }
                                if (i4 > 0) {
                                    builderScreenshotRate.startTime(i);
                                }
                                if (!FrameRetrieverManager.this.isForAudioWave || !Utils.isRtl()) {
                                    FrameRetrieverManager.this.mediaRetriever.execute(builderScreenshotRate.build(), FrameRetrieverManager.this.audioWaveExecutor, null);
                                } else {
                                    FrameRetrieverManager.this.mediaRetriever.execute(builderScreenshotRate.build(), FrameRetrieverManager.this.audioWaveExecutor, new IEditorExecuteCallback() { // from class: com.narvii.video.services.FrameRetrieverManager.retrieveFrame.3.1
                                        @Override // ffmpeg.base.IEditorExecuteCallback
                                        public void onCancel() {
                                            IEditorExecuteCallback.DefaultImpls.onCancel(this);
                                        }

                                        @Override // ffmpeg.base.IEditorBaseCallback
                                        public void onFail() {
                                            IEditorExecuteCallback.DefaultImpls.onFail(this);
                                        }

                                        @Override // ffmpeg.base.IEditorExecuteCallback
                                        public void onProgress(float f) {
                                            IEditorExecuteCallback.DefaultImpls.onProgress(this, f);
                                        }

                                        @Override // ffmpeg.base.IEditorBaseCallback
                                        public void onStart() {
                                            IEditorExecuteCallback.DefaultImpls.onStart(this);
                                        }

                                        @Override // ffmpeg.base.IEditorBaseCallback
                                        public void onSuccess() {
                                            IEditorExecuteCallback.DefaultImpls.onSuccess(this);
                                            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
                                            aVClipInfoPack.inputPath = file2.getAbsolutePath();
                                            FrameRetrieverManager.this.mediaRetriever.execute(new MediaEditingConfig.Companion.Builder(aVClipInfoPack, new File(file, "wave.jpg"), 512).horizontalFlip(true).build(), FrameRetrieverManager.this.audioWaveExecutor, null);
                                        }
                                    });
                                }
                            }
                            frameHunter.run();
                        }
                    });
                    return;
                }
            }
            offerRetrieveTask(input, i, i2, i3, callback);
            return;
        }
        if (z) {
            HashMap<String, Bitmap> cachedBitmapForStaticImages = getCachedBitmapForStaticImages();
            String strInputPath = input.inputPath();
            if (cachedBitmapForStaticImages == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, *>");
            }
            if (cachedBitmapForStaticImages.containsKey(strInputPath)) {
                callback.onFrameBitmapLoaded(i, getCachedBitmapForStaticImages().get(input.inputPath()));
                return;
            } else {
                this.frameHunterExecutor.execute(new Runnable() { // from class: com.narvii.video.services.FrameRetrieverManager.retrieveFrame.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeFile(input.inputPath(), options);
                        options.inSampleSize = BitmapUtils.findBestSampleSize(options.outWidth, options.outHeight, i2, i3);
                        options.inJustDecodeBounds = false;
                        final Bitmap result = BitmapFactory.decodeFile(input.inputPath(), options);
                        int imageRotation = BitmapUtils.readImageRotation(input.inputPath());
                        if (imageRotation != 0) {
                            Matrix matrix = new Matrix();
                            matrix.postRotate(imageRotation);
                            Intrinsics.checkExpressionValueIsNotNull(result, "bitmap");
                            result = Bitmap.createBitmap(result, 0, 0, result.getWidth(), result.getHeight(), matrix, false);
                        }
                        String strInputPath2 = input.inputPath();
                        if (strInputPath2 != null) {
                            HashMap cachedBitmapForStaticImages2 = FrameRetrieverManager.this.getCachedBitmapForStaticImages();
                            Intrinsics.checkExpressionValueIsNotNull(result, "result");
                            cachedBitmapForStaticImages2.put(strInputPath2, result);
                        }
                        Utils.post(new Runnable() { // from class: com.narvii.video.services.FrameRetrieverManager.retrieveFrame.1.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                callback.onFrameBitmapLoaded(i, result);
                            }
                        });
                    }
                });
                return;
            }
        }
        String strInputPath2 = input.inputPath();
        if (strInputPath2 != null) {
            callback.onFramePicturesLoaded(i, new File(strInputPath2));
        }
    }

    static /* synthetic */ boolean isFrameProcessed$default(FrameRetrieverManager frameRetrieverManager, String str, int i, float f, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            f = frameRetrieverManager.frameRetrieveIntervalInMs;
        }
        return frameRetrieverManager.isFrameProcessed(str, i, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isFrameProcessed(String str, int i, float f) {
        String str2 = str + String.valueOf((int) (i / (this.frameSectionSize * f)));
        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.frameSectionLoadFlags;
        if (concurrentHashMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("frameSectionLoadFlags");
            throw null;
        }
        Boolean bool = concurrentHashMap.get(str2);
        if (bool == null) {
            bool = false;
        }
        Intrinsics.checkExpressionValueIsNotNull(bool, "frameSectionLoadFlags[sectionFlagKey] ?: false");
        return bool.booleanValue() || getFrameFilePathByTime(str, i, f).exists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getFrameFilePathByTime(String str, int i, float f) {
        String string;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        float f2 = i;
        sb.append(String.valueOf((int) (f2 / (this.frameSectionSize * f))));
        String string2 = sb.toString();
        if (this.isForAudioWave) {
            string = string2 + "/wave.jpg";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string2);
            sb2.append("/");
            sb2.append("frame_");
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Locale locale = Locale.US;
            Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
            double d = f2 / f;
            Double.isNaN(d);
            Object[] objArr = {Integer.valueOf((((int) (d + 0.5d)) % this.frameSectionSize) + 1)};
            String str2 = String.format(locale, "%05d", Arrays.copyOf(objArr, objArr.length));
            Intrinsics.checkExpressionValueIsNotNull(str2, "java.lang.String.format(locale, format, *args)");
            sb2.append(str2);
            sb2.append(".jpg");
            string = sb2.toString();
        }
        File file = this.outputFolder;
        if (file != null) {
            return new File(file, string);
        }
        Intrinsics.throwUninitializedPropertyAccessException("outputFolder");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FrameRetrieverManager.kt */
    final class FrameHunter implements Runnable {
        private final boolean bitmapDecoding;
        private final IVideoServiceCallback callback;
        private final int frameTime;
        private final Handler handler;
        private final String prefix;
        private final File prey;
        private final int sectionIndex;
        final /* synthetic */ FrameRetrieverManager this$0;

        public FrameHunter(FrameRetrieverManager frameRetrieverManager, String prefix, int i, float f, boolean z, IVideoServiceCallback callback) {
            Intrinsics.checkParameterIsNotNull(prefix, "prefix");
            Intrinsics.checkParameterIsNotNull(callback, "callback");
            this.this$0 = frameRetrieverManager;
            this.prefix = prefix;
            this.frameTime = i;
            this.bitmapDecoding = z;
            this.callback = callback;
            this.handler = new Handler(Looper.getMainLooper());
            this.sectionIndex = (int) (this.frameTime / (frameRetrieverManager.frameSectionSize * f));
            this.prey = frameRetrieverManager.getFrameFilePathByTime(this.prefix, this.frameTime, f);
        }

        public /* synthetic */ FrameHunter(FrameRetrieverManager frameRetrieverManager, String str, int i, float f, boolean z, IVideoServiceCallback iVideoServiceCallback, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(frameRetrieverManager, str, i, f, (i2 & 8) != 0 ? false : z, iVideoServiceCallback);
        }

        public final boolean getBitmapDecoding() {
            return this.bitmapDecoding;
        }

        public final IVideoServiceCallback getCallback() {
            return this.callback;
        }

        public final int getFrameTime() {
            return this.frameTime;
        }

        public final String getPrefix() {
            return this.prefix;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.prey.exists()) {
                this.handler.removeCallbacks(this);
                final Bitmap bitmapDecodeFile = this.bitmapDecoding ? BitmapFactory.decodeFile(this.prey.getAbsolutePath()) : null;
                Utils.post(new Runnable() { // from class: com.narvii.video.services.FrameRetrieverManager$FrameHunter$run$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (this.this$0.prey.exists()) {
                            if (!this.this$0.getBitmapDecoding()) {
                                this.this$0.getCallback().onFramePicturesLoaded(this.this$0.getFrameTime(), this.this$0.prey);
                                return;
                            } else {
                                this.this$0.getCallback().onFrameBitmapLoaded(this.this$0.getFrameTime(), bitmapDecodeFile);
                                return;
                            }
                        }
                        this.this$0.getCallback().onActionFailed(new Exception("Failed to get frame screenshot"));
                    }
                });
                return;
            }
            ConcurrentHashMap concurrentHashMapAccess$getFrameSectionLoadFlags$p = FrameRetrieverManager.access$getFrameSectionLoadFlags$p(this.this$0);
            if (Intrinsics.areEqual(concurrentHashMapAccess$getFrameSectionLoadFlags$p.get(this.prefix + String.valueOf(this.sectionIndex)), (Object) true)) {
                this.handler.postDelayed(this, 50L);
            } else {
                this.handler.removeCallbacks(this);
                Utils.post(new Runnable() { // from class: com.narvii.video.services.FrameRetrieverManager$FrameHunter$run$2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.this$0.getCallback().onActionFailed(new Exception("Failed to get frame screenshot"));
                    }
                });
            }
        }
    }
}
