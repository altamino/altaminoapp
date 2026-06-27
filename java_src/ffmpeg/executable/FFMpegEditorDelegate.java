package ffmpeg.executable;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.narvii.editors.ffmpeg.FFmpegJni;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.util.Utils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import ffmpeg.base.IEditor;
import ffmpeg.base.IEditorBaseCallback;
import ffmpeg.base.IEditorExecuteCallback;
import ffmpeg.base.MediaEditingConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: FFMpegEditorDelegate.kt */
/* loaded from: classes4.dex */
public final class FFMpegEditorDelegate implements IEditor {
    public static final Companion Companion = new Companion(null);
    private static volatile FFMpegEditorDelegate instance;
    private final File localFileDir;
    private final ConcurrentHashMap<MediaEditingConfig, StreamingExecutor> runningTasks;

    private FFMpegEditorDelegate(File file) {
        this.localFileDir = file;
        this.runningTasks = new ConcurrentHashMap<>();
    }

    public /* synthetic */ FFMpegEditorDelegate(File file, DefaultConstructorMarker defaultConstructorMarker) {
        this(file);
    }

    @Override // ffmpeg.base.IEditor
    public void abortAnimatedStickerConvertTask(StickerInfoPack stickerInfo) {
        Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        IEditor.DefaultImpls.abortAnimatedStickerConvertTask(this, stickerInfo);
    }

    @Override // ffmpeg.base.IEditor
    public void abortAnimatedStickerConvertTasks() {
        IEditor.DefaultImpls.abortAnimatedStickerConvertTasks(this);
    }

    @Override // ffmpeg.base.IEditor
    public File getStickerCopiedSrcFile(StickerInfoPack stickerInfo) {
        Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        return IEditor.DefaultImpls.getStickerCopiedSrcFile(this, stickerInfo);
    }

    @Override // ffmpeg.base.IEditor
    public File getTargetStickerInstallFile(StickerInfoPack stickerInfo) {
        Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        return IEditor.DefaultImpls.getTargetStickerInstallFile(this, stickerInfo);
    }

    @Override // ffmpeg.base.IEditor
    public boolean hasStickerTemplatedInstalled(StickerInfoPack stickerInfoPack) {
        return IEditor.DefaultImpls.hasStickerTemplatedInstalled(this, stickerInfoPack);
    }

    @Override // ffmpeg.base.IEditor
    public void installSticker(Context context, StickerInfoPack stickerInfo, boolean z, ExecutorService executorService, IEditorBaseCallback iEditorBaseCallback) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        IEditor.DefaultImpls.installSticker(this, context, stickerInfo, z, executorService, iEditorBaseCallback);
    }

    @Override // ffmpeg.base.IEditor
    public void onLocalStickerCacheCleared() {
        IEditor.DefaultImpls.onLocalStickerCacheCleared(this);
    }

    @Override // ffmpeg.base.IEditor
    public void execute(final MediaEditingConfig config, ExecutorService executorService, final IEditorExecuteCallback iEditorExecuteCallback) {
        Intrinsics.checkParameterIsNotNull(config, "config");
        StreamingExecutor streamingExecutor = new StreamingExecutor(this, config, new IEditorExecuteCallback() { // from class: ffmpeg.executable.FFMpegEditorDelegate$execute$worker$1
            @Override // ffmpeg.base.IEditorBaseCallback
            public void onStart() {
                IEditorExecuteCallback iEditorExecuteCallback2 = iEditorExecuteCallback;
                if (iEditorExecuteCallback2 != null) {
                    iEditorExecuteCallback2.onStart();
                }
            }

            @Override // ffmpeg.base.IEditorExecuteCallback
            public void onProgress(float f) {
                IEditorExecuteCallback iEditorExecuteCallback2 = iEditorExecuteCallback;
                if (iEditorExecuteCallback2 != null) {
                    iEditorExecuteCallback2.onProgress(f);
                }
            }

            @Override // ffmpeg.base.IEditorBaseCallback
            public void onSuccess() {
                this.this$0.runningTasks.remove(config);
                IEditorExecuteCallback iEditorExecuteCallback2 = iEditorExecuteCallback;
                if (iEditorExecuteCallback2 != null) {
                    iEditorExecuteCallback2.onSuccess();
                }
            }

            @Override // ffmpeg.base.IEditorBaseCallback
            public void onFail() {
                this.this$0.runningTasks.remove(config);
                IEditorExecuteCallback iEditorExecuteCallback2 = iEditorExecuteCallback;
                if (iEditorExecuteCallback2 != null) {
                    iEditorExecuteCallback2.onFail();
                }
            }

            @Override // ffmpeg.base.IEditorExecuteCallback
            public void onCancel() {
                this.this$0.runningTasks.remove(config);
                IEditorExecuteCallback iEditorExecuteCallback2 = iEditorExecuteCallback;
                if (iEditorExecuteCallback2 != null) {
                    iEditorExecuteCallback2.onCancel();
                }
            }
        });
        if (executorService == null) {
            streamingExecutor.execute(new Void[0]);
        } else {
            streamingExecutor.executeOnExecutor(executorService, new Void[0]);
        }
        this.runningTasks.put(config, streamingExecutor);
    }

    @Override // ffmpeg.base.IEditor
    public void abort(MediaEditingConfig config) {
        Intrinsics.checkParameterIsNotNull(config, "config");
        StreamingExecutor streamingExecutorRemove = this.runningTasks.remove(config);
        if (streamingExecutorRemove != null) {
            streamingExecutorRemove.abort();
        }
    }

    @Override // ffmpeg.base.IEditor
    public void abortAll(boolean z) {
        Set<Map.Entry<MediaEditingConfig, StreamingExecutor>> setEntrySet = this.runningTasks.entrySet();
        Intrinsics.checkExpressionValueIsNotNull(setEntrySet, "runningTasks.entries");
        for (Map.Entry entry : CollectionsKt___CollectionsKt.asSequence(setEntrySet)) {
            if (z || !((MediaEditingConfig) entry.getKey()).getRunningInBackground()) {
                ((StreamingExecutor) entry.getValue()).abort();
            }
        }
    }

    @Override // ffmpeg.base.IEditor
    public StreamInfo fetchStreamingInfo(String input) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        StreamInfo streamInfoFetchStreamInfo = FFmpegJni.fetchStreamInfo(input);
        if (streamInfoFetchStreamInfo == null) {
            streamInfoFetchStreamInfo = new StreamInfo();
        }
        streamInfoFetchStreamInfo.hasError = streamInfoFetchStreamInfo.durationInMs <= 0;
        return streamInfoFetchStreamInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateExecuteConfig(MediaEditingConfig mediaEditingConfig, ArrayList<StreamInfo> arrayList) {
        Iterator<StreamInfo> it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            StreamInfo next = it.next();
            boolean z = ((next.rotate / 90) & 1) != 0;
            int i = z ? next.height : next.width;
            int i2 = z ? next.width : next.height;
            mediaEditingConfig.isVerticalVideoList().add(Boolean.valueOf(!z ? next.height <= next.width : next.width <= next.height));
            mediaEditingConfig.getInputHasAudioTrackList().add(Boolean.valueOf((next.aCodecType == null || mediaEditingConfig.getVideoOnly()) ? false : true));
            mediaEditingConfig.getInputHasVideoTrackList().add(Boolean.valueOf((next.vCodecType == null || mediaEditingConfig.getAudioOnly()) ? false : true));
            mediaEditingConfig.getOrgVideoWidthList().add(Integer.valueOf(i));
            mediaEditingConfig.getOrgVideoHeightList().add(Integer.valueOf(i2));
            ArrayList<Float> orgVideoDARList = mediaEditingConfig.getOrgVideoDARList();
            float f = next.dar;
            if (f <= 0) {
                f = i / i2;
            } else if (z) {
                f = 1.0f / f;
            }
            orgVideoDARList.add(Float.valueOf(f));
        }
        if (mediaEditingConfig.getInputClipList().size() > 1) {
            mediaEditingConfig.setTranscodeAudio(true);
            mediaEditingConfig.setTranscodeVideo(true);
        } else {
            if (mediaEditingConfig.getActionType() != 1) {
                return;
            }
            mediaEditingConfig.setTranscodeAudio(true);
            mediaEditingConfig.setTranscodeVideo(true);
            mediaEditingConfig.setTrim(arrayList.get(0).durationInMs > 15000 || mediaEditingConfig.getDuration() != arrayList.get(0).durationInMs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0e51 A[LOOP:0: B:267:0x0e4b->B:269:0x0e51, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> parseCommand(ffmpeg.base.MediaEditingConfig r35) {
        /*
            Method dump skipped, instructions count: 3690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ffmpeg.executable.FFMpegEditorDelegate.parseCommand(ffmpeg.base.MediaEditingConfig):java.util.List");
    }

    private final void appendAudioMixFilter(int i, AVClipInfoPack aVClipInfoPack, StringBuilder sb, int i2) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Object[] objArr = {String.valueOf(i), String.valueOf(aVClipInfoPack.trackVolume), String.valueOf(i2), String.valueOf(i2)};
        String str = String.format("[%s:a]aformat=sample_fmts=fltp:sample_rates=44100:channel_layouts=stereo,volume=%s,adelay=%s|%s", Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
        sb.append(str);
        if (aVClipInfoPack.fadeIn) {
            sb.append(",");
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            Object[] objArr2 = {String.valueOf(aVClipInfoPack.trimStartInMs / 1000), String.valueOf(Math.min(aVClipInfoPack.trimmedDurationInMs(), 4000) / 1000)};
            String str2 = String.format("afade=t=in:ss=%s:d=%s", Arrays.copyOf(objArr2, objArr2.length));
            Intrinsics.checkExpressionValueIsNotNull(str2, "java.lang.String.format(format, *args)");
            sb.append(str2);
        }
        if (aVClipInfoPack.fadeOut && aVClipInfoPack.trimmedDurationInMs() > 4000) {
            sb.append(",");
            int iMin = Math.min(aVClipInfoPack.trimmedDurationInMs() - 4000, 4000);
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
            Object[] objArr3 = {String.valueOf((aVClipInfoPack.trimEndInMs - iMin) / 1000), String.valueOf(iMin / 1000)};
            String str3 = String.format("afade=t=out:st=%s:d=%s", Arrays.copyOf(objArr3, objArr3.length));
            Intrinsics.checkExpressionValueIsNotNull(str3, "java.lang.String.format(format, *args)");
            sb.append(str3);
        }
        StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
        Object[] objArr4 = {String.valueOf(i)};
        String str4 = String.format("[a%s]", Arrays.copyOf(objArr4, objArr4.length));
        Intrinsics.checkExpressionValueIsNotNull(str4, "java.lang.String.format(format, *args)");
        sb.append(str4);
        sb.append(";");
    }

    /* compiled from: FFMpegEditorDelegate.kt */
    public final class StreamingExecutor extends AsyncTask<Void, Float, Boolean> {
        private IEditorExecuteCallback callback;
        private final MediaEditingConfig config;
        final /* synthetic */ FFMpegEditorDelegate this$0;
        private long threadId;

        public StreamingExecutor(FFMpegEditorDelegate fFMpegEditorDelegate, MediaEditingConfig config, IEditorExecuteCallback iEditorExecuteCallback) {
            Intrinsics.checkParameterIsNotNull(config, "config");
            this.this$0 = fFMpegEditorDelegate;
            this.config = config;
            this.callback = iEditorExecuteCallback;
            this.threadId = -1L;
        }

        public final IEditorExecuteCallback getCallback() {
            return this.callback;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            IEditorExecuteCallback iEditorExecuteCallback = this.callback;
            if (iEditorExecuteCallback != null) {
                iEditorExecuteCallback.onStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... params) {
            Intrinsics.checkParameterIsNotNull(params, "params");
            Log.d("CountTest", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            try {
                ArrayList arrayList = new ArrayList();
                for (AVClipInfoPack aVClipInfoPack : this.config.getInputClipList()) {
                    FFMpegEditorDelegate fFMpegEditorDelegate = this.this$0;
                    String str = aVClipInfoPack.inputPath;
                    Intrinsics.checkExpressionValueIsNotNull(str, "clip.inputPath");
                    arrayList.add(fFMpegEditorDelegate.fetchStreamingInfo(str));
                }
                this.this$0.updateExecuteConfig(this.config, arrayList);
                Thread threadCurrentThread = Thread.currentThread();
                Intrinsics.checkExpressionValueIsNotNull(threadCurrentThread, "Thread.currentThread()");
                this.threadId = threadCurrentThread.getId();
                if (this.callback != null && this.config.getNeedProgressCallback()) {
                    FFmpegJni.addProgressCallback(this.threadId, new FFmpegJni.IFFMpegExecProgressCallback() { // from class: ffmpeg.executable.FFMpegEditorDelegate$StreamingExecutor$doInBackground$1
                        @Override // com.narvii.editors.ffmpeg.FFmpegJni.IFFMpegExecProgressCallback
                        public final void onProgress(final float f) {
                            Utils.post(new Runnable() { // from class: ffmpeg.executable.FFMpegEditorDelegate$StreamingExecutor$doInBackground$1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    IEditorExecuteCallback callback = FFMpegEditorDelegate$StreamingExecutor$doInBackground$1.this.this$0.getCallback();
                                    if (callback != null) {
                                        callback.onProgress(f);
                                    }
                                }
                            });
                        }
                    });
                }
                Object[] array = this.this$0.parseCommand(this.config).toArray(new String[0]);
                if (array != null) {
                    Boolean boolValueOf = Boolean.valueOf(FFmpegJni.run((String[]) array, this.threadId, this.config.getDuration(), this.config.getNeedProgressCallback()) == 0);
                    FFmpegJni.removeProgressCallback(this.threadId);
                    return boolValueOf;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            } catch (Exception unused) {
                FFmpegJni.removeProgressCallback(this.threadId);
                return false;
            } catch (Throwable th) {
                FFmpegJni.removeProgressCallback(this.threadId);
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            IEditorExecuteCallback iEditorExecuteCallback = this.callback;
            if (iEditorExecuteCallback != null) {
                if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                    iEditorExecuteCallback.onSuccess();
                } else {
                    iEditorExecuteCallback.onFail();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(Boolean bool) {
            IEditorExecuteCallback iEditorExecuteCallback = this.callback;
            if (iEditorExecuteCallback != null) {
                iEditorExecuteCallback.onCancel();
            }
            FFmpegJni.removeProgressCallback(this.threadId);
        }

        public final void abort() {
            IEditorExecuteCallback iEditorExecuteCallback = this.callback;
            if (iEditorExecuteCallback != null) {
                iEditorExecuteCallback.onCancel();
            }
            this.callback = null;
            FFmpegJni.removeProgressCallback(this.threadId);
            cancel(true);
            FFmpegJni.abort(this.threadId);
        }
    }

    /* compiled from: FFMpegEditorDelegate.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FFMpegEditorDelegate getInstance() {
            return FFMpegEditorDelegate.instance;
        }

        public final void setInstance(FFMpegEditorDelegate fFMpegEditorDelegate) {
            FFMpegEditorDelegate.instance = fFMpegEditorDelegate;
        }

        public final FFMpegEditorDelegate getInstance(File localFileDir) {
            Intrinsics.checkParameterIsNotNull(localFileDir, "localFileDir");
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (getInstance() == null) {
                synchronized (FFMpegEditorDelegate.class) {
                    if (FFMpegEditorDelegate.Companion.getInstance() == null) {
                        FFMpegEditorDelegate.Companion.setInstance(new FFMpegEditorDelegate(localFileDir, defaultConstructorMarker));
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            FFMpegEditorDelegate companion = getInstance();
            if (companion != null) {
                return companion;
            }
            Intrinsics.throwNpe();
            throw null;
        }

        public final String formatFFMpegTime(int i) {
            int i2 = i % 1000;
            int i3 = i / 1000;
            int i4 = i3 % 60;
            int i5 = (i3 / 60) % 60;
            int i6 = i3 / InviteMembersFragment.SECOND_HOUR;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Locale locale = Locale.US;
            Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
            Object[] objArr = {Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2)};
            String str = String.format(locale, "%02d:%02d:%02d.%03d", Arrays.copyOf(objArr, objArr.length));
            Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, format, *args)");
            return str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getResolutionByDAR(int i, int i2, boolean z, float f) {
            if (z) {
                if (i >= 720) {
                    i = 720;
                }
                i2 = (int) (i / f);
                if ((i2 & 1) == 1) {
                    i2++;
                }
            } else {
                if (i2 >= 720) {
                    i2 = 720;
                }
                i = (int) (i2 * f);
                if ((i & 1) == 1) {
                    i++;
                }
            }
            return String.valueOf(i) + ":" + String.valueOf(i2);
        }

        static /* synthetic */ Pair getFixedDimensionSizeForSarAdjust$default(Companion companion, MediaEditingConfig mediaEditingConfig, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            return companion.getFixedDimensionSizeForSarAdjust(mediaEditingConfig, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Pair<String, String> getFixedDimensionSizeForSarAdjust(MediaEditingConfig mediaEditingConfig, int i) {
            int iIntValue = 720;
            if (Intrinsics.compare(mediaEditingConfig.getOrgVideoWidthList().get(i).intValue(), 720) < 0) {
                Integer num = mediaEditingConfig.getOrgVideoWidthList().get(i);
                Intrinsics.checkExpressionValueIsNotNull(num, "config.orgVideoWidthList[index]");
                iIntValue = num.intValue();
            }
            Float f = mediaEditingConfig.getOrgVideoDARList().get(i);
            Intrinsics.checkExpressionValueIsNotNull(f, "config.orgVideoDARList[index]");
            int iFloatValue = (int) (iIntValue / f.floatValue());
            if ((iFloatValue & 1) == 1) {
                iFloatValue++;
            }
            if (iFloatValue > 1280) {
                iIntValue = (iIntValue * 1280) / iFloatValue;
                if ((iIntValue & 1) == 1) {
                    iIntValue++;
                }
                iFloatValue = 1280;
            }
            return new Pair<>(String.valueOf(iIntValue), String.valueOf(iFloatValue));
        }
    }
}
