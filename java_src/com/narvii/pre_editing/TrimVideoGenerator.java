package com.narvii.pre_editing;

import android.graphics.Bitmap;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.pre_editing.TrimVideoGenerator;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.MediaPreloadService;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.VideoManager;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import tv.danmaku.ijk.media.player.misc.IMediaFormat;

/* compiled from: TrimVideoGenerator.kt */
/* loaded from: classes3.dex */
public final class TrimVideoGenerator {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TrimVideoGenerator.class), "videoManager", "getVideoManager()Lcom/narvii/video/services/VideoManager;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TrimVideoGenerator.class), "preloadService", "getPreloadService()Lcom/narvii/video/MediaPreloadService;"))};
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "TrimVideoGenerator";
    private final NVContext ctx;
    private boolean dropNegativeTs;
    private final Lazy preloadService$delegate;
    private boolean singleTask;
    private final ThreadPoolExecutor trimExecutor;
    private List<BaseTrimVideoTask<?>> trimTasks;
    private final Lazy videoManager$delegate;

    /* compiled from: TrimVideoGenerator.kt */
    public interface TrimCallback {
        void onCancel();

        void onError();

        void onProgress(float f);

        void onSuccess(String str);
    }

    private final MediaPreloadService getPreloadService() {
        Lazy lazy = this.preloadService$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (MediaPreloadService) lazy.getValue();
    }

    private final VideoManager getVideoManager() {
        Lazy lazy = this.videoManager$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (VideoManager) lazy.getValue();
    }

    public TrimVideoGenerator(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.trimExecutor = Utils.createThreadPoolExecutor(1, "pre_trim");
        this.trimTasks = new ArrayList();
        this.videoManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0<VideoManager>() { // from class: com.narvii.pre_editing.TrimVideoGenerator$videoManager$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final VideoManager invoke() {
                Object service = this.this$0.getCtx().getService("videoManager");
                if (service != null) {
                    return (VideoManager) service;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.services.VideoManager");
            }
        });
        this.preloadService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<MediaPreloadService>() { // from class: com.narvii.pre_editing.TrimVideoGenerator$preloadService$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MediaPreloadService invoke() {
                Object service = this.this$0.getCtx().getService("mediapreload");
                if (service != null) {
                    return (MediaPreloadService) service;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.video.MediaPreloadService");
            }
        });
        this.singleTask = true;
        this.dropNegativeTs = true;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    /* compiled from: TrimVideoGenerator.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final boolean getSingleTask() {
        return this.singleTask;
    }

    public final void setSingleTask(boolean z) {
        this.singleTask = z;
    }

    public final boolean getDropNegativeTs() {
        return this.dropNegativeTs;
    }

    public final void setDropNegativeTs(boolean z) {
        this.dropNegativeTs = z;
    }

    public final void startTrimVideo(Pair<String, String> srcPath, String dstPath, String fileName, long j, long j2, TrimCallback callback) {
        Intrinsics.checkParameterIsNotNull(srcPath, "srcPath");
        Intrinsics.checkParameterIsNotNull(dstPath, "dstPath");
        Intrinsics.checkParameterIsNotNull(fileName, "fileName");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        if (Build.VERSION.SDK_INT < 18) {
            return;
        }
        File file = new File(dstPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str = dstPath + fileName;
        synchronized (this) {
            if (this.singleTask) {
                Iterator<T> it = this.trimTasks.iterator();
                while (it.hasNext()) {
                    ((BaseTrimVideoTask) it.next()).cancel(true);
                }
                this.trimTasks.clear();
            } else {
                CollectionsKt__MutableCollectionsKt.removeAll((List) this.trimTasks, (Function1) new Function1<BaseTrimVideoTask<?>, Boolean>() { // from class: com.narvii.pre_editing.TrimVideoGenerator$startTrimVideo$1$2
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(TrimVideoGenerator.BaseTrimVideoTask<?> baseTrimVideoTask) {
                        return Boolean.valueOf(invoke2(baseTrimVideoTask));
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final boolean invoke2(TrimVideoGenerator.BaseTrimVideoTask<?> it2) {
                        Intrinsics.checkParameterIsNotNull(it2, "it");
                        return it2.getStatus() == AsyncTask.Status.FINISHED;
                    }
                });
            }
            FFTrimVideoTask fFTrimVideoTask = new FFTrimVideoTask(getVideoManager(), getPreloadService(), srcPath, str, j, j2, this.dropNegativeTs, callback);
            this.trimTasks.add(fFTrimVideoTask);
            ThreadPoolExecutor trimExecutor = this.trimExecutor;
            Intrinsics.checkExpressionValueIsNotNull(trimExecutor, "trimExecutor");
            if (!trimExecutor.isShutdown()) {
                fFTrimVideoTask.executeOnExecutor(this.trimExecutor, new Void[0]);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void cancel() {
        synchronized (this) {
            Iterator<T> it = this.trimTasks.iterator();
            while (it.hasNext()) {
                ((BaseTrimVideoTask) it.next()).cancel(true);
            }
            this.trimTasks.clear();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void release() {
        synchronized (this) {
            Iterator<T> it = this.trimTasks.iterator();
            while (it.hasNext()) {
                ((BaseTrimVideoTask) it.next()).cancel(true);
            }
            this.trimTasks.clear();
            this.trimExecutor.shutdown();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TrimVideoGenerator.kt */
    static abstract class BaseTrimVideoTask<T> extends AsyncTask<Void, T, Integer> {
        public static final Companion Companion = new Companion(null);
        public static final int RESULT_CANCEL = 2;
        public static final int RESULT_ERROR = 1;
        public static final int RESULT_SUCCESS = 0;
        private final TrimCallback callback;
        private final String dstPath;

        public BaseTrimVideoTask(String dstPath, TrimCallback callback) {
            Intrinsics.checkParameterIsNotNull(dstPath, "dstPath");
            Intrinsics.checkParameterIsNotNull(callback, "callback");
            this.dstPath = dstPath;
            this.callback = callback;
        }

        /* compiled from: TrimVideoGenerator.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Integer num) {
            if (num != null && num.intValue() == 2) {
                this.callback.onCancel();
                return;
            }
            if (num != null && num.intValue() == 0) {
                this.callback.onSuccess(this.dstPath);
            } else if (num != null && num.intValue() == 1) {
                this.callback.onError();
            }
        }
    }

    /* compiled from: TrimVideoGenerator.kt */
    private static final class TrimVideoTask extends BaseTrimVideoTask<Pair<? extends Integer, ? extends Long>> {
        public static final Companion Companion = new Companion(null);
        private static final String FORMAT_KEY_ROTATION = "rotation-degrees";
        private final int DEFAULT_TRIM_BUFFER_SIZE;
        private MediaExtractor audioExtractor;
        private final TrimCallback callback;
        private final String dstPath;
        private final long endMs;
        private MediaMuxer outputMuxer;
        private TrimProgressRecorder recorder;
        private final Pair<String, String> srcPath;
        private final long startMs;
        private MediaExtractor videoExtractor;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TrimVideoTask(Pair<String, String> srcPath, String dstPath, long j, long j2, TrimCallback callback) {
            super(dstPath, callback);
            Intrinsics.checkParameterIsNotNull(srcPath, "srcPath");
            Intrinsics.checkParameterIsNotNull(dstPath, "dstPath");
            Intrinsics.checkParameterIsNotNull(callback, "callback");
            this.srcPath = srcPath;
            this.dstPath = dstPath;
            this.startMs = j;
            this.endMs = j2;
            this.callback = callback;
            this.DEFAULT_TRIM_BUFFER_SIZE = 1048576;
            this.recorder = new TrimProgressRecorder();
        }

        /* compiled from: TrimVideoGenerator.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0085  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Integer doInBackground(java.lang.Void... r17) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.pre_editing.TrimVideoGenerator.TrimVideoTask.doInBackground(java.lang.Void[]):java.lang.Integer");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Pair<Integer, Long>... values) {
            Intrinsics.checkParameterIsNotNull(values, "values");
            Pair<Integer, Long> pair = values[0];
            if (pair != null) {
                this.callback.onProgress(this.recorder.getCurrentProgress(pair.getFirst().intValue(), pair.getSecond().longValue()));
            }
        }

        private final Pair<HashMap<Integer, Integer>, Integer> initExtractConfig(MediaExtractor mediaExtractor, MediaMuxer mediaMuxer, boolean z, boolean z2) {
            int integer;
            int integer2;
            HashMap map = new HashMap();
            int trackCount = mediaExtractor.getTrackCount();
            int i = -1;
            for (int i2 = 0; i2 < trackCount; i2++) {
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(i2);
                String mime = trackFormat.getString(IMediaFormat.KEY_MIME);
                Intrinsics.checkExpressionValueIsNotNull(mime, "mime");
                if ((StringsKt__StringsJVMKt.startsWith$default(mime, "audio/", false, 2, null) && z2) || (StringsKt__StringsJVMKt.startsWith$default(mime, "video/", false, 2, null) && z)) {
                    try {
                        int iAddTrack = mediaMuxer.addTrack(trackFormat);
                        if (iAddTrack >= 0) {
                            if (StringsKt__StringsJVMKt.startsWith$default(mime, "video/", false, 2, null) && trackFormat.containsKey(FORMAT_KEY_ROTATION) && (integer2 = trackFormat.getInteger(FORMAT_KEY_ROTATION)) >= 0) {
                                mediaMuxer.setOrientationHint(integer2);
                            }
                            map.put(Integer.valueOf(i2), Integer.valueOf(iAddTrack));
                            mediaExtractor.selectTrack(i2);
                            if (trackFormat.containsKey("max-input-size") && (integer = trackFormat.getInteger("max-input-size")) > i) {
                                i = integer;
                            }
                        }
                    } catch (IllegalStateException e) {
                        Log.e("media muxer cannot add this track, format = " + trackFormat, e);
                    }
                }
            }
            if (i < 0) {
                i = this.DEFAULT_TRIM_BUFFER_SIZE;
            }
            return new Pair<>(map, Integer.valueOf(i));
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
        
            r2.size = 0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final boolean extractDataToMuxer(android.media.MediaExtractor r15, android.media.MediaMuxer r16, kotlin.Pair<? extends java.util.HashMap<java.lang.Integer, java.lang.Integer>, java.lang.Integer> r17, int r18) {
            /*
                r14 = this;
                r0 = r14
                java.lang.Object r1 = r17.getSecond()
                java.lang.Number r1 = (java.lang.Number) r1
                int r1 = r1.intValue()
                java.nio.ByteBuffer r1 = java.nio.ByteBuffer.allocate(r1)
                android.media.MediaCodec$BufferInfo r2 = new android.media.MediaCodec$BufferInfo
                r2.<init>()
            L14:
                r3 = 0
                boolean r4 = r14.isCancelled()     // Catch: java.lang.IllegalStateException -> L8c
                r5 = 1
                if (r4 != 0) goto L8b
                r2.offset = r3     // Catch: java.lang.IllegalStateException -> L8c
                r4 = r15
                int r6 = r15.readSampleData(r1, r3)     // Catch: java.lang.IllegalStateException -> L8c
                r2.size = r6     // Catch: java.lang.IllegalStateException -> L8c
                int r6 = r2.size     // Catch: java.lang.IllegalStateException -> L8c
                if (r6 >= 0) goto L2c
                r2.size = r3     // Catch: java.lang.IllegalStateException -> L8c
                goto L8b
            L2c:
                int r6 = r15.getSampleTrackIndex()     // Catch: java.lang.IllegalStateException -> L8c
                long r7 = r15.getSampleTime()     // Catch: java.lang.IllegalStateException -> L8c
                r2.presentationTimeUs = r7     // Catch: java.lang.IllegalStateException -> L8c
                long r9 = r0.endMs     // Catch: java.lang.IllegalStateException -> L8c
                r11 = 0
                int r13 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
                if (r13 <= 0) goto L4a
                long r9 = r0.endMs     // Catch: java.lang.IllegalStateException -> L8c
                r11 = 1000(0x3e8, float:1.401E-42)
                long r11 = (long) r11     // Catch: java.lang.IllegalStateException -> L8c
                long r9 = r9 * r11
                int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r11 <= 0) goto L4a
                goto L8b
            L4a:
                int r9 = r15.getSampleFlags()     // Catch: java.lang.IllegalStateException -> L8c
                r2.flags = r9     // Catch: java.lang.IllegalStateException -> L8c
                java.lang.Object r9 = r17.getFirst()     // Catch: java.lang.IllegalStateException -> L8c
                java.util.HashMap r9 = (java.util.HashMap) r9     // Catch: java.lang.IllegalStateException -> L8c
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.IllegalStateException -> L8c
                java.lang.Object r6 = r9.get(r6)     // Catch: java.lang.IllegalStateException -> L8c
                java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.lang.IllegalStateException -> L8c
                if (r6 == 0) goto L85
                java.lang.String r9 = "it"
                kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r9)     // Catch: java.lang.IllegalStateException -> L8c
                int r6 = r6.intValue()     // Catch: java.lang.IllegalStateException -> L8c
                r9 = r16
                r9.writeSampleData(r6, r1, r2)     // Catch: java.lang.IllegalStateException -> L8c
                kotlin.Pair[] r5 = new kotlin.Pair[r5]     // Catch: java.lang.IllegalStateException -> L8c
                kotlin.Pair r6 = new kotlin.Pair     // Catch: java.lang.IllegalStateException -> L8c
                java.lang.Integer r10 = java.lang.Integer.valueOf(r18)     // Catch: java.lang.IllegalStateException -> L8c
                java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.IllegalStateException -> L8c
                r6.<init>(r10, r7)     // Catch: java.lang.IllegalStateException -> L8c
                r5[r3] = r6     // Catch: java.lang.IllegalStateException -> L8c
                r14.publishProgress(r5)     // Catch: java.lang.IllegalStateException -> L8c
                goto L87
            L85:
                r9 = r16
            L87:
                r15.advance()     // Catch: java.lang.IllegalStateException -> L8c
                goto L14
            L8b:
                return r5
            L8c:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.pre_editing.TrimVideoGenerator.TrimVideoTask.extractDataToMuxer(android.media.MediaExtractor, android.media.MediaMuxer, kotlin.Pair, int):boolean");
        }

        public final void safeSetDataSource(MediaExtractor safeSetDataSource, String path) throws IOException {
            Intrinsics.checkParameterIsNotNull(safeSetDataSource, "$this$safeSetDataSource");
            Intrinsics.checkParameterIsNotNull(path, "path");
            try {
                safeSetDataSource.setDataSource(path);
            } catch (IOException unused) {
                Log.e(TrimVideoGenerator.TAG, "MediaExtractor setDataSource throws IOException, url = " + path);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TrimVideoGenerator.kt */
    static final class FFTrimVideoTask extends BaseTrimVideoTask<Float> {
        private final TrimCallback callback;
        private final Condition condition;
        private MediaEditingConfig curRunningConfig;
        private final boolean dropNegativeTs;
        private final String dstPath;
        private final long endMs;
        private final ReentrantLock lock;
        private final MediaPreloadService preloadService;
        private final Pair<String, String> srcPath;
        private final long startMs;
        private final VideoManager videoManager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FFTrimVideoTask(VideoManager videoManager, MediaPreloadService preloadService, Pair<String, String> srcPath, String dstPath, long j, long j2, boolean z, TrimCallback callback) {
            super(dstPath, callback);
            Intrinsics.checkParameterIsNotNull(videoManager, "videoManager");
            Intrinsics.checkParameterIsNotNull(preloadService, "preloadService");
            Intrinsics.checkParameterIsNotNull(srcPath, "srcPath");
            Intrinsics.checkParameterIsNotNull(dstPath, "dstPath");
            Intrinsics.checkParameterIsNotNull(callback, "callback");
            this.videoManager = videoManager;
            this.preloadService = preloadService;
            this.srcPath = srcPath;
            this.dstPath = dstPath;
            this.startMs = j;
            this.endMs = j2;
            this.dropNegativeTs = z;
            this.callback = callback;
            this.lock = new ReentrantLock();
            this.condition = this.lock.newCondition();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Integer doInBackground(Void... params) {
            boolean zTrimMedia$default;
            Intrinsics.checkParameterIsNotNull(params, "params");
            int i = 0;
            if (TextUtils.equals(this.srcPath.getFirst(), this.srcPath.getSecond())) {
                zTrimMedia$default = trimMedia$default(this, this.srcPath.getFirst(), this.dstPath, (int) this.startMs, (int) this.endMs, true, true, null, 64, null);
            } else {
                String str = this.dstPath;
                int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str, ".", 0, false, 6, (Object) null);
                if (str == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                String strSubstring = str.substring(0, iLastIndexOf$default);
                Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String str2 = strSubstring + "_v_0.mp4";
                if (!trimMedia(this.srcPath.getFirst(), str2, (int) this.startMs, (int) this.endMs, true, false, new Function1<Float, Float>() { // from class: com.narvii.pre_editing.TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1
                    public final float invoke(float f) {
                        return f * 0.6f;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Float invoke(Float f) {
                        return Float.valueOf(invoke(f.floatValue()));
                    }
                })) {
                    return 1;
                }
                StreamInfo streamInfoFetchStreamInfoSync = this.videoManager.fetchStreamInfoSync(str2);
                String str3 = strSubstring + "_a_0.mp4";
                int iMax = Math.max(((int) this.endMs) - streamInfoFetchStreamInfoSync.durationInMs, 0);
                if (!trimMedia(this.srcPath.getSecond(), str3, iMax, iMax + streamInfoFetchStreamInfoSync.durationInMs, false, true, new Function1<Float, Float>() { // from class: com.narvii.pre_editing.TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$3
                    public final float invoke(float f) {
                        return (f * 0.2f) + 0.6f;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Float invoke(Float f) {
                        return Float.valueOf(invoke(f.floatValue()));
                    }
                }) || !muxAVFile(str2, str3, this.dstPath, new Function1<Float, Float>() { // from class: com.narvii.pre_editing.TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5
                    public final float invoke(float f) {
                        return (f * 0.2f) + 0.8f;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Float invoke(Float f) {
                        return Float.valueOf(invoke(f.floatValue()));
                    }
                })) {
                    return 1;
                }
                new File(str2).delete();
                new File(str3).delete();
                zTrimMedia$default = true;
            }
            if (isCancelled()) {
                i = 2;
            } else if (!zTrimMedia$default) {
                i = 1;
            }
            return Integer.valueOf(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Float... values) {
            Intrinsics.checkParameterIsNotNull(values, "values");
            Float f = values[0];
            if (f != null) {
                this.callback.onProgress(f.floatValue());
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            MediaEditingConfig mediaEditingConfig = this.curRunningConfig;
            if (mediaEditingConfig != null) {
                this.videoManager.abort(mediaEditingConfig);
            }
        }

        static /* synthetic */ boolean trimMedia$default(FFTrimVideoTask fFTrimVideoTask, String str, String str2, int i, int i2, boolean z, boolean z2, Function1 function1, int i3, Object obj) {
            return fFTrimVideoTask.trimMedia(str, str2, i, i2, z, z2, (i3 & 64) != 0 ? new Function1<Float, Float>() { // from class: com.narvii.pre_editing.TrimVideoGenerator$FFTrimVideoTask$trimMedia$1
                public final float invoke(float f) {
                    return f;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Float invoke(Float f) {
                    return Float.valueOf(invoke(f.floatValue()));
                }
            } : function1);
        }

        private final boolean trimMedia(String str, String str2, int i, int i2, boolean z, boolean z2, final Function1<? super Float, Float> function1) {
            String strTranslateUrl = str;
            if (isCancelled()) {
                return false;
            }
            final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            ref$BooleanRef.element = false;
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            if (StringsKt__StringsJVMKt.startsWith$default(strTranslateUrl, "http", false, 2, null)) {
                strTranslateUrl = this.preloadService.translateUrl(String.valueOf(Math.abs(str.hashCode())), strTranslateUrl);
            }
            aVClipInfoPack.inputPath = strTranslateUrl;
            aVClipInfoPack.trimStartInMs = i;
            aVClipInfoPack.trimEndInMs = i2;
            this.curRunningConfig = this.videoManager.cropVideoByCopy(aVClipInfoPack, new File(str2), i2 - i, (256 & 8) != 0 ? 0 : i, this.dropNegativeTs, (256 & 32) != 0 ? null : new IVideoServiceCallback() { // from class: com.narvii.pre_editing.TrimVideoGenerator$FFTrimVideoTask$trimMedia$2
                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionCancelled() {
                    IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                }

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
                public void onFrameBitmapLoaded(int i3, Bitmap bitmap) {
                    IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i3, bitmap);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onFramePicturesLoaded(int i3, File file) {
                    IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i3, file);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onVideoProcessed(String path) {
                    Intrinsics.checkParameterIsNotNull(path, "path");
                    IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                    ref$BooleanRef.element = true;
                    ReentrantLock reentrantLock = this.this$0.lock;
                    reentrantLock.lock();
                    try {
                        this.this$0.condition.signal();
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        reentrantLock.unlock();
                    }
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionFailed(Exception exc) {
                    IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                    ref$BooleanRef.element = false;
                    ReentrantLock reentrantLock = this.this$0.lock;
                    reentrantLock.lock();
                    try {
                        this.this$0.condition.signal();
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        reentrantLock.unlock();
                    }
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onProgress(float f, String str3) {
                    this.this$0.publishProgress((Float) function1.invoke(Float.valueOf(f)));
                }
            }, z, z2, (256 & 256) != 0 ? null : null);
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                this.condition.await();
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                return ref$BooleanRef.element;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        private final boolean muxAVFile(String str, String str2, String str3, final Function1<? super Float, Float> function1) {
            if (isCancelled()) {
                return false;
            }
            final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            ref$BooleanRef.element = false;
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.inputPath = str;
            AVClipInfoPack aVClipInfoPack2 = new AVClipInfoPack();
            aVClipInfoPack2.inputPath = str2;
            this.curRunningConfig = this.videoManager.simpleAVMix(aVClipInfoPack, CollectionsKt__CollectionsJVMKt.listOf(aVClipInfoPack2), new File(str3), new IVideoServiceCallback() { // from class: com.narvii.pre_editing.TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1
                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionCancelled() {
                    IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                }

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
                public void onVideoProcessed(String path) {
                    Intrinsics.checkParameterIsNotNull(path, "path");
                    IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                    ref$BooleanRef.element = true;
                    ReentrantLock reentrantLock = this.this$0.lock;
                    reentrantLock.lock();
                    try {
                        this.this$0.condition.signal();
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        reentrantLock.unlock();
                    }
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionFailed(Exception exc) {
                    IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                    ref$BooleanRef.element = false;
                    ReentrantLock reentrantLock = this.this$0.lock;
                    reentrantLock.lock();
                    try {
                        this.this$0.condition.signal();
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        reentrantLock.unlock();
                    }
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onProgress(float f, String str4) {
                    this.this$0.publishProgress((Float) function1.invoke(Float.valueOf(f)));
                }
            }, true);
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                this.condition.await();
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                return ref$BooleanRef.element;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    /* compiled from: TrimVideoGenerator.kt */
    private static final class TrimProgressRecorder {
        public static final Companion Companion = new Companion(null);
        public static final int UPDATE_TYPE_AUDIO = 2;
        public static final int UPDATE_TYPE_MIXED = 0;
        public static final int UPDATE_TYPE_VIDEO = 1;
        private long endTime;
        private long lastUpdateAudioPts;
        private long lastUpdateVideoPts;
        private long realAudioStartTime;
        private long realVideoStartTime;

        /* compiled from: TrimVideoGenerator.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public static /* synthetic */ void initTime$default(TrimProgressRecorder trimProgressRecorder, long j, MediaExtractor mediaExtractor, MediaExtractor mediaExtractor2, int i, Object obj) {
            if ((i & 4) != 0) {
                mediaExtractor2 = null;
            }
            trimProgressRecorder.initTime(j, mediaExtractor, mediaExtractor2);
        }

        public final void initTime(long j, MediaExtractor videoEx, MediaExtractor mediaExtractor) {
            Intrinsics.checkParameterIsNotNull(videoEx, "videoEx");
            this.realVideoStartTime = videoEx.getSampleTime();
            this.realAudioStartTime = mediaExtractor != null ? mediaExtractor.getSampleTime() : 0L;
            this.endTime = j;
            this.lastUpdateVideoPts = this.realVideoStartTime;
            this.lastUpdateAudioPts = this.realAudioStartTime;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0055 A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final float getCurrentProgress(int r9, long r10) {
            /*
                r8 = this;
                r0 = 0
                r1 = 1065353216(0x3f800000, float:1.0)
                if (r9 == 0) goto L39
                r2 = 1
                r3 = 2
                if (r9 == r2) goto L21
                if (r9 == r3) goto Ld
                r9 = 0
                goto L4e
            Ld:
                r8.lastUpdateAudioPts = r10
                long r9 = r8.lastUpdateVideoPts
                long r4 = r8.lastUpdateAudioPts
                long r9 = r9 + r4
                long r4 = r8.realVideoStartTime
                long r9 = r9 - r4
                long r6 = r8.realAudioStartTime
                long r9 = r9 - r6
                float r9 = (float) r9
                float r9 = r9 * r1
                long r10 = (long) r3
                long r1 = r8.endTime
                goto L34
            L21:
                r8.lastUpdateVideoPts = r10
                long r9 = r8.lastUpdateVideoPts
                long r4 = r8.lastUpdateAudioPts
                long r9 = r9 + r4
                long r4 = r8.realVideoStartTime
                long r9 = r9 - r4
                long r6 = r8.realAudioStartTime
                long r9 = r9 - r6
                float r9 = (float) r9
                float r9 = r9 * r1
                long r10 = (long) r3
                long r1 = r8.endTime
            L34:
                long r10 = r10 * r1
                long r10 = r10 - r4
                long r10 = r10 - r6
                goto L4c
            L39:
                long r2 = r8.lastUpdateVideoPts
                long r9 = java.lang.Math.max(r10, r2)
                r8.lastUpdateVideoPts = r9
                long r9 = r8.lastUpdateVideoPts
                long r2 = r8.realVideoStartTime
                long r9 = r9 - r2
                float r9 = (float) r9
                float r9 = r9 * r1
                long r10 = r8.endTime
                long r10 = r10 - r2
            L4c:
                float r10 = (float) r10
                float r9 = r9 / r10
            L4e:
                r10 = 100
                float r10 = (float) r10
                int r10 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
                if (r10 < 0) goto L58
                r0 = 1120403456(0x42c80000, float:100.0)
                goto L60
            L58:
                r10 = 0
                float r10 = (float) r10
                int r10 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
                if (r10 >= 0) goto L5f
                goto L60
            L5f:
                r0 = r9
            L60:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.pre_editing.TrimVideoGenerator.TrimProgressRecorder.getCurrentProgress(int, long):float");
        }
    }
}
