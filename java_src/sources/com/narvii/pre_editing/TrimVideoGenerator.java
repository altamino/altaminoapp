package com.narvii.pre_editing;

import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.AsyncTask;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import androidx.webkit.ProxyConfig;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.video.MediaPreloadService;
import com.narvii.video.interfaces.IVideoServiceCallback;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.VideoManager;
import e8.l;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.a0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
public final class TrimVideoGenerator {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "TrimVideoGenerator";

    @NotNull
    private final NVContext ctx;
    private boolean dropNegativeTs;

    @NotNull
    private final m preloadService$delegate;
    private boolean singleTask;
    private final ThreadPoolExecutor trimExecutor;

    @NotNull
    private List<BaseTrimVideoTask<?>> trimTasks;

    @NotNull
    private final m videoManager$delegate;

    /* JADX INFO: Access modifiers changed from: private */
    static abstract class BaseTrimVideoTask<T> extends AsyncTask<Void, T, Integer> {

        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int RESULT_CANCEL = 2;
        public static final int RESULT_ERROR = 1;
        public static final int RESULT_SUCCESS = 0;

        @NotNull
        private final TrimCallback callback;

        @NotNull
        private final String dstPath;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        public BaseTrimVideoTask(@NotNull String dstPath, @NotNull TrimCallback callback) {
            t.j(dstPath, "dstPath");
            t.j(callback, "callback");
            this.dstPath = dstPath;
            this.callback = callback;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(@Nullable Integer num) {
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

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class FFTrimVideoTask extends BaseTrimVideoTask<Float> {

        @NotNull
        private final TrimCallback callback;
        private final Condition condition;

        @Nullable
        private g7.d curRunningConfig;
        private final boolean dropNegativeTs;

        @NotNull
        private final String dstPath;
        private final long endMs;

        @NotNull
        private final ReentrantLock lock;

        @NotNull
        private final MediaPreloadService preloadService;

        @NotNull
        private final u<String, String> srcPath;
        private final long startMs;

        @NotNull
        private final VideoManager videoManager;

        private final boolean trimMedia(String str, String str2, int i10, int i11, boolean z6, boolean z10, final l<? super Float, Float> lVar) {
            String strTranslateUrl = str;
            if (isCancelled()) {
                return false;
            }
            final k0 k0Var = new k0();
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            if (kotlin.text.t.K(strTranslateUrl, ProxyConfig.MATCH_HTTP, false, 2, null)) {
                strTranslateUrl = this.preloadService.translateUrl(String.valueOf(Math.abs(str.hashCode())), strTranslateUrl);
            }
            aVClipInfoPack.inputPath = strTranslateUrl;
            aVClipInfoPack.trimStartInMs = i10;
            aVClipInfoPack.trimEndInMs = i11;
            this.curRunningConfig = this.videoManager.cropVideoByCopy(aVClipInfoPack, new File(str2), i11 - i10, (256 & 8) != 0 ? 0 : i10, this.dropNegativeTs, (256 & 32) != 0 ? null : new IVideoServiceCallback() { // from class: com.narvii.pre_editing.TrimVideoGenerator$FFTrimVideoTask$trimMedia$2
                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onProgress(float f, @Nullable String str3) {
                    this.publishProgress(lVar.invoke(Float.valueOf(f)));
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onVideoProcessed(@NotNull String path) {
                    t.j(path, "path");
                    IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                    k0Var.element = true;
                    ReentrantLock reentrantLock = this.lock;
                    TrimVideoGenerator.FFTrimVideoTask fFTrimVideoTask = this;
                    reentrantLock.lock();
                    try {
                        fFTrimVideoTask.condition.signal();
                        l0 l0Var = l0.INSTANCE;
                    } finally {
                        reentrantLock.unlock();
                    }
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionCancelled() {
                    IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionFailed(@Nullable Exception exc) {
                    IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                    k0Var.element = false;
                    ReentrantLock reentrantLock = this.lock;
                    TrimVideoGenerator.FFTrimVideoTask fFTrimVideoTask = this;
                    reentrantLock.lock();
                    try {
                        fFTrimVideoTask.condition.signal();
                        l0 l0Var = l0.INSTANCE;
                    } finally {
                        reentrantLock.unlock();
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
                public void onFrameBitmapLoaded(int i12, @Nullable Bitmap bitmap) {
                    IVideoServiceCallback.DefaultImpls.onFrameBitmapLoaded(this, i12, bitmap);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onFramePicturesLoaded(int i12, @Nullable File file) {
                    IVideoServiceCallback.DefaultImpls.onFramePicturesLoaded(this, i12, file);
                }
            }, z6, z10, (256 & 256) != 0 ? null : null);
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                this.condition.await();
                l0 l0Var = l0.INSTANCE;
                return k0Var.element;
            } finally {
                reentrantLock.unlock();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FFTrimVideoTask(@NotNull VideoManager videoManager, @NotNull MediaPreloadService preloadService, @NotNull u<String, String> srcPath, @NotNull String dstPath, long j6, long j10, boolean z6, @NotNull TrimCallback callback) {
            super(dstPath, callback);
            t.j(videoManager, "videoManager");
            t.j(preloadService, "preloadService");
            t.j(srcPath, "srcPath");
            t.j(dstPath, "dstPath");
            t.j(callback, "callback");
            this.videoManager = videoManager;
            this.preloadService = preloadService;
            this.srcPath = srcPath;
            this.dstPath = dstPath;
            this.startMs = j6;
            this.endMs = j10;
            this.dropNegativeTs = z6;
            this.callback = callback;
            ReentrantLock reentrantLock = new ReentrantLock();
            this.lock = reentrantLock;
            this.condition = reentrantLock.newCondition();
        }

        /* JADX WARN: Multi-variable type inference failed */
        static /* synthetic */ boolean trimMedia$default(FFTrimVideoTask fFTrimVideoTask, String str, String str2, int i10, int i11, boolean z6, boolean z10, l lVar, int i12, Object obj) {
            return fFTrimVideoTask.trimMedia(str, str2, i10, i11, z6, z10, (i12 & 64) != 0 ? TrimVideoGenerator$FFTrimVideoTask$trimMedia$1.INSTANCE : lVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        @NotNull
        public Integer doInBackground(@NotNull Void... params) {
            boolean zTrimMedia$default;
            t.j(params, "params");
            int i10 = 0;
            if (TextUtils.equals(this.srcPath.c(), this.srcPath.d())) {
                zTrimMedia$default = trimMedia$default(this, this.srcPath.c(), this.dstPath, (int) this.startMs, (int) this.endMs, true, true, null, 64, null);
            } else {
                String str = this.dstPath;
                String strSubstring = str.substring(0, kotlin.text.u.i0(str, ".", 0, false, 6, null));
                t.i(strSubstring, "substring(...)");
                String str2 = strSubstring + "_v_0.mp4";
                if (!trimMedia(this.srcPath.c(), str2, (int) this.startMs, (int) this.endMs, true, false, TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1.INSTANCE)) {
                    return 1;
                }
                StreamInfo streamInfoFetchStreamInfoSync = this.videoManager.fetchStreamInfoSync(str2);
                String str3 = strSubstring + "_a_0.mp4";
                int iMax = Math.max(((int) this.endMs) - streamInfoFetchStreamInfoSync.durationInMs, 0);
                if (!trimMedia(this.srcPath.d(), str3, iMax, iMax + streamInfoFetchStreamInfoSync.durationInMs, false, true, TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$3.INSTANCE) || !muxAVFile(str2, str3, this.dstPath, TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5.INSTANCE)) {
                    return 1;
                }
                new File(str2).delete();
                new File(str3).delete();
                zTrimMedia$default = true;
            }
            if (isCancelled()) {
                i10 = 2;
            } else if (!zTrimMedia$default) {
                i10 = 1;
            }
            return Integer.valueOf(i10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(@NotNull Float... values) {
            t.j(values, "values");
            Float f = values[0];
            if (f != null) {
                this.callback.onProgress(f.floatValue());
            }
        }

        private final boolean muxAVFile(String str, String str2, String str3, final l<? super Float, Float> lVar) {
            if (isCancelled()) {
                return false;
            }
            final k0 k0Var = new k0();
            AVClipInfoPack aVClipInfoPack = new AVClipInfoPack();
            aVClipInfoPack.inputPath = str;
            AVClipInfoPack aVClipInfoPack2 = new AVClipInfoPack();
            aVClipInfoPack2.inputPath = str2;
            this.curRunningConfig = this.videoManager.simpleAVMix(aVClipInfoPack, kotlin.collections.u.e(aVClipInfoPack2), new File(str3), new IVideoServiceCallback() { // from class: com.narvii.pre_editing.TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1
                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onProgress(float f, @Nullable String str4) {
                    this.publishProgress(lVar.invoke(Float.valueOf(f)));
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onVideoProcessed(@NotNull String path) {
                    t.j(path, "path");
                    IVideoServiceCallback.DefaultImpls.onVideoProcessed(this, path);
                    k0Var.element = true;
                    ReentrantLock reentrantLock = this.lock;
                    TrimVideoGenerator.FFTrimVideoTask fFTrimVideoTask = this;
                    reentrantLock.lock();
                    try {
                        fFTrimVideoTask.condition.signal();
                        l0 l0Var = l0.INSTANCE;
                    } finally {
                        reentrantLock.unlock();
                    }
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionCancelled() {
                    IVideoServiceCallback.DefaultImpls.onActionCancelled(this);
                }

                @Override // com.narvii.video.interfaces.IVideoServiceCallback
                public void onActionFailed(@Nullable Exception exc) {
                    IVideoServiceCallback.DefaultImpls.onActionFailed(this, exc);
                    k0Var.element = false;
                    ReentrantLock reentrantLock = this.lock;
                    TrimVideoGenerator.FFTrimVideoTask fFTrimVideoTask = this;
                    reentrantLock.lock();
                    try {
                        fFTrimVideoTask.condition.signal();
                        l0 l0Var = l0.INSTANCE;
                    } finally {
                        reentrantLock.unlock();
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
            }, true);
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                this.condition.await();
                l0 l0Var = l0.INSTANCE;
                return k0Var.element;
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            g7.d dVar = this.curRunningConfig;
            if (dVar != null) {
                this.videoManager.abort(dVar);
            }
        }
    }

    public interface TrimCallback {
        void onCancel();

        void onError();

        void onProgress(float f);

        void onSuccess(@NotNull String str);
    }

    private static final class TrimProgressRecorder {

        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int UPDATE_TYPE_AUDIO = 2;
        public static final int UPDATE_TYPE_MIXED = 0;
        public static final int UPDATE_TYPE_VIDEO = 1;
        private long endTime;
        private long lastUpdateAudioPts;
        private long lastUpdateVideoPts;
        private long realAudioStartTime;
        private long realVideoStartTime;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        public static /* synthetic */ void initTime$default(TrimProgressRecorder trimProgressRecorder, long j6, MediaExtractor mediaExtractor, MediaExtractor mediaExtractor2, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                mediaExtractor2 = null;
            }
            trimProgressRecorder.initTime(j6, mediaExtractor, mediaExtractor2);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0051  */
        /* JADX WARN: Code duplicated, block: B:15:0x0053  */
        /* JADX WARN: Code duplicated, block: B:18:0x0058  */
        /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
        public final float getCurrentProgress(int i10, long j6) {
            float f;
            long j10;
            float f6;
            if (i10 != 0) {
                if (i10 == 1) {
                    this.lastUpdateVideoPts = j6;
                    long j11 = j6 + this.lastUpdateAudioPts;
                    long j12 = this.realVideoStartTime;
                    long j13 = this.realAudioStartTime;
                    f = ((j11 - j12) - j13) * 1.0f;
                    j10 = ((((long) 2) * this.endTime) - j12) - j13;
                } else if (i10 != 2) {
                    f6 = 0.0f;
                } else {
                    this.lastUpdateAudioPts = j6;
                    long j14 = this.lastUpdateVideoPts + j6;
                    long j15 = this.realVideoStartTime;
                    long j16 = this.realAudioStartTime;
                    f6 = (((j14 - j15) - j16) * 1.0f) / (((((long) 2) * this.endTime) - j15) - j16);
                }
                if (f6 >= 100.0f) {
                    return 100.0f;
                }
                if (f6 < 0.0f) {
                    return 0.0f;
                }
                return f6;
            }
            long jMax = Math.max(j6, this.lastUpdateVideoPts);
            this.lastUpdateVideoPts = jMax;
            long j17 = this.realVideoStartTime;
            f = (jMax - j17) * 1.0f;
            j10 = this.endTime - j17;
            f6 = f / j10;
            if (f6 >= 100.0f) {
                return 100.0f;
            }
            if (f6 < 0.0f) {
                return 0.0f;
            }
            return f6;
        }

        public final void initTime(long j6, @NotNull MediaExtractor videoEx, @Nullable MediaExtractor mediaExtractor) {
            t.j(videoEx, "videoEx");
            this.realVideoStartTime = videoEx.getSampleTime();
            long sampleTime = mediaExtractor != null ? mediaExtractor.getSampleTime() : 0L;
            this.realAudioStartTime = sampleTime;
            this.endTime = j6;
            this.lastUpdateVideoPts = this.realVideoStartTime;
            this.lastUpdateAudioPts = sampleTime;
        }
    }

    @RequiresApi
    private static final class TrimVideoTask extends BaseTrimVideoTask<u<? extends Integer, ? extends Long>> {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private static final String FORMAT_KEY_ROTATION = "rotation-degrees";
        private final int DEFAULT_TRIM_BUFFER_SIZE;

        @Nullable
        private MediaExtractor audioExtractor;

        @NotNull
        private final TrimCallback callback;

        @NotNull
        private final String dstPath;
        private final long endMs;

        @Nullable
        private MediaMuxer outputMuxer;

        @NotNull
        private TrimProgressRecorder recorder;

        @NotNull
        private final u<String, String> srcPath;
        private final long startMs;

        @Nullable
        private MediaExtractor videoExtractor;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TrimVideoTask(@NotNull u<String, String> srcPath, @NotNull String dstPath, long j6, long j10, @NotNull TrimCallback callback) {
            super(dstPath, callback);
            t.j(srcPath, "srcPath");
            t.j(dstPath, "dstPath");
            t.j(callback, "callback");
            this.srcPath = srcPath;
            this.dstPath = dstPath;
            this.startMs = j6;
            this.endMs = j10;
            this.callback = callback;
            this.DEFAULT_TRIM_BUFFER_SIZE = 1048576;
            this.recorder = new TrimProgressRecorder();
        }

        private final u<HashMap<Integer, Integer>, Integer> initExtractConfig(MediaExtractor mediaExtractor, MediaMuxer mediaMuxer, boolean z6, boolean z10) {
            int integer;
            int integer2;
            HashMap map = new HashMap();
            int trackCount = mediaExtractor.getTrackCount();
            int i10 = -1;
            for (int i11 = 0; i11 < trackCount; i11++) {
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(i11);
                t.i(trackFormat, "getTrackFormat(...)");
                String string = trackFormat.getString("mime");
                if (string != null && ((kotlin.text.t.K(string, "audio/", false, 2, null) && z10) || (kotlin.text.t.K(string, "video/", false, 2, null) && z6))) {
                    try {
                        int iAddTrack = mediaMuxer.addTrack(trackFormat);
                        if (iAddTrack >= 0) {
                            if (kotlin.text.t.K(string, "video/", false, 2, null) && trackFormat.containsKey(FORMAT_KEY_ROTATION) && (integer2 = trackFormat.getInteger(FORMAT_KEY_ROTATION)) >= 0) {
                                mediaMuxer.setOrientationHint(integer2);
                            }
                            map.put(Integer.valueOf(i11), Integer.valueOf(iAddTrack));
                            mediaExtractor.selectTrack(i11);
                            if (trackFormat.containsKey("max-input-size") && (integer = trackFormat.getInteger("max-input-size")) > i10) {
                                i10 = integer;
                            }
                        }
                    } catch (IllegalStateException e) {
                        Log.e("media muxer cannot add this track, format = " + trackFormat, e);
                    }
                }
            }
            if (i10 < 0) {
                i10 = this.DEFAULT_TRIM_BUFFER_SIZE;
            }
            return new u<>(map, Integer.valueOf(i10));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code duplicated, block: B:12:0x0083  */
        @Override // android.os.AsyncTask
        @NotNull
        public Integer doInBackground(@NotNull Void... params) {
            boolean zExtractDataToMuxer;
            t.j(params, "params");
            int i10 = 0;
            MediaMuxer mediaMuxer = new MediaMuxer(this.dstPath, 0);
            this.outputMuxer = mediaMuxer;
            if (TextUtils.equals(this.srcPath.c(), this.srcPath.d())) {
                MediaExtractor mediaExtractor = new MediaExtractor();
                this.videoExtractor = mediaExtractor;
                safeSetDataSource(mediaExtractor, this.srcPath.c());
                u<HashMap<Integer, Integer>, Integer> uVarInitExtractConfig = initExtractConfig(mediaExtractor, mediaMuxer, true, true);
                if (uVarInitExtractConfig.c().size() > 0) {
                    long j6 = this.startMs;
                    if (j6 > 0) {
                        mediaExtractor.seekTo(j6 * ((long) 1000), 0);
                        if (mediaExtractor.getSampleTime() >= 0) {
                            mediaExtractor.seekTo(mediaExtractor.getSampleTime(), 2);
                        }
                    }
                    TrimProgressRecorder.initTime$default(this.recorder, ((long) 1000) * this.endMs, mediaExtractor, null, 4, null);
                    mediaMuxer.start();
                    zExtractDataToMuxer = extractDataToMuxer(mediaExtractor, mediaMuxer, uVarInitExtractConfig, 0);
                } else {
                    zExtractDataToMuxer = false;
                }
            } else {
                MediaExtractor mediaExtractor2 = new MediaExtractor();
                this.videoExtractor = mediaExtractor2;
                safeSetDataSource(mediaExtractor2, this.srcPath.c());
                u<HashMap<Integer, Integer>, Integer> uVarInitExtractConfig2 = initExtractConfig(mediaExtractor2, mediaMuxer, true, false);
                MediaExtractor mediaExtractor3 = new MediaExtractor();
                this.audioExtractor = mediaExtractor3;
                safeSetDataSource(mediaExtractor3, this.srcPath.d());
                u<HashMap<Integer, Integer>, Integer> uVarInitExtractConfig3 = initExtractConfig(mediaExtractor3, mediaMuxer, false, true);
                if (uVarInitExtractConfig2.c().size() <= 0 || uVarInitExtractConfig3.c().size() <= 0) {
                    zExtractDataToMuxer = false;
                } else {
                    long j10 = this.startMs;
                    if (j10 > 0) {
                        mediaExtractor2.seekTo(j10 * ((long) 1000), 0);
                        if (mediaExtractor2.getSampleTime() >= 0) {
                            mediaExtractor3.seekTo(mediaExtractor2.getSampleTime() + ((long) 100000), 0);
                            while (mediaExtractor2.getSampleTime() >= mediaExtractor3.getSampleTime()) {
                                mediaExtractor3.advance();
                            }
                        }
                    }
                    this.recorder.initTime(this.endMs * ((long) 1000), mediaExtractor2, mediaExtractor3);
                    mediaMuxer.start();
                    if (extractDataToMuxer(mediaExtractor2, mediaMuxer, uVarInitExtractConfig2, 1) && extractDataToMuxer(mediaExtractor3, mediaMuxer, uVarInitExtractConfig3, 2)) {
                        zExtractDataToMuxer = true;
                    } else {
                        zExtractDataToMuxer = false;
                    }
                }
            }
            try {
                mediaMuxer.release();
                if (isCancelled()) {
                    i10 = 2;
                } else if (!zExtractDataToMuxer) {
                    i10 = 1;
                }
                return Integer.valueOf(i10);
            } catch (Exception unused) {
                return 1;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(@NotNull u<Integer, Long>... values) {
            t.j(values, "values");
            u<Integer, Long> uVar = values[0];
            if (uVar != null) {
                this.callback.onProgress(this.recorder.getCurrentProgress(uVar.c().intValue(), uVar.d().longValue()));
            }
        }

        public final void safeSetDataSource(@NotNull MediaExtractor mediaExtractor, @NotNull String path) {
            t.j(mediaExtractor, "<this>");
            t.j(path, "path");
            try {
                mediaExtractor.setDataSource(path);
            } catch (IOException unused) {
                Log.e(TrimVideoGenerator.TAG, "MediaExtractor setDataSource throws IOException, url = " + path);
            }
        }

        private final boolean extractDataToMuxer(MediaExtractor mediaExtractor, MediaMuxer mediaMuxer, u<? extends HashMap<Integer, Integer>, Integer> uVar, int i10) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(uVar.d().intValue());
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            while (!isCancelled()) {
                try {
                    bufferInfo.offset = 0;
                    int sampleData = mediaExtractor.readSampleData(byteBufferAllocate, 0);
                    bufferInfo.size = sampleData;
                    if (sampleData < 0) {
                        bufferInfo.size = 0;
                        break;
                    }
                    int sampleTrackIndex = mediaExtractor.getSampleTrackIndex();
                    long sampleTime = mediaExtractor.getSampleTime();
                    bufferInfo.presentationTimeUs = sampleTime;
                    long j6 = this.endMs;
                    if (j6 > 0 && sampleTime > j6 * ((long) 1000)) {
                        break;
                    }
                    bufferInfo.flags = mediaExtractor.getSampleFlags();
                    Integer num = uVar.c().get(Integer.valueOf(sampleTrackIndex));
                    if (num != null) {
                        mediaMuxer.writeSampleData(num.intValue(), byteBufferAllocate, bufferInfo);
                        publishProgress(new u(Integer.valueOf(i10), Long.valueOf(sampleTime)));
                    }
                    mediaExtractor.advance();
                } catch (IllegalStateException unused) {
                    return false;
                }
            }
            return true;
        }
    }

    public final void cancel() {
        synchronized (this) {
            try {
                Iterator<T> it = this.trimTasks.iterator();
                while (it.hasNext()) {
                    ((BaseTrimVideoTask) it.next()).cancel(true);
                }
                this.trimTasks.clear();
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public final boolean getDropNegativeTs() {
        return this.dropNegativeTs;
    }

    public final boolean getSingleTask() {
        return this.singleTask;
    }

    public final void release() {
        synchronized (this) {
            try {
                Iterator<T> it = this.trimTasks.iterator();
                while (it.hasNext()) {
                    ((BaseTrimVideoTask) it.next()).cancel(true);
                }
                this.trimTasks.clear();
                this.trimExecutor.shutdown();
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setDropNegativeTs(boolean z6) {
        this.dropNegativeTs = z6;
    }

    public final void setSingleTask(boolean z6) {
        this.singleTask = z6;
    }

    public final void startTrimVideo(@NotNull u<String, String> srcPath, @NotNull String dstPath, @NotNull String fileName, long j6, long j10, @NotNull TrimCallback callback) {
        t.j(srcPath, "srcPath");
        t.j(dstPath, "dstPath");
        t.j(fileName, "fileName");
        t.j(callback, "callback");
        File file = new File(dstPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str = dstPath + fileName;
        synchronized (this) {
            try {
                if (this.singleTask) {
                    Iterator<T> it = this.trimTasks.iterator();
                    while (it.hasNext()) {
                        ((BaseTrimVideoTask) it.next()).cancel(true);
                    }
                    this.trimTasks.clear();
                } else {
                    a0.J(this.trimTasks, TrimVideoGenerator$startTrimVideo$1$2.INSTANCE);
                }
                FFTrimVideoTask fFTrimVideoTask = new FFTrimVideoTask(getVideoManager(), getPreloadService(), srcPath, str, j6, j10, this.dropNegativeTs, callback);
                this.trimTasks.add(fFTrimVideoTask);
                if (!this.trimExecutor.isShutdown()) {
                    fFTrimVideoTask.executeOnExecutor(this.trimExecutor, new Void[0]);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public TrimVideoGenerator(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        this.trimExecutor = Utils.createThreadPoolExecutor(1, "pre_trim");
        this.trimTasks = new ArrayList();
        this.videoManager$delegate = o.a(new TrimVideoGenerator$videoManager$2(this));
        this.preloadService$delegate = o.a(new TrimVideoGenerator$preloadService$2(this));
        this.singleTask = true;
        this.dropNegativeTs = true;
    }

    private final MediaPreloadService getPreloadService() {
        return (MediaPreloadService) this.preloadService$delegate.getValue();
    }

    private final VideoManager getVideoManager() {
        return (VideoManager) this.videoManager$delegate.getValue();
    }
}
