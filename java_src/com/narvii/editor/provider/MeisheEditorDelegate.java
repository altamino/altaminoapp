package com.narvii.editor.provider;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import com.meicam.sdk.NvsStreamingContext;
import com.meishe.cafconvertor.NvRational;
import com.narvii.util.FileUtils;
import com.narvii.util.Utils;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import ffmpeg.base.IEditor;
import ffmpeg.base.IEditorBaseCallback;
import ffmpeg.base.IEditorExecuteCallback;
import ffmpeg.base.MediaEditingConfig;
import ffmpeg.executable.FFMpegEditorDelegate;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: MeisheEditorDelegate.kt */
/* loaded from: classes2.dex */
public final class MeisheEditorDelegate implements IEditor {
    public static final Companion Companion = new Companion(null);
    private static volatile MeisheEditorDelegate instance;
    private final Object LOCK;
    private volatile String animatedStickerTemplateUuid;
    private IEditor ffmpegEditorDelegate;
    private final ConcurrentHashMap<String, AnimatedStickerInstallExecutor> flyingAnimatedStickerConvertTasks;
    private final SharedPreferences prefs;
    private final File stickerCopiedSrcDir;
    private final NvRational stickerFrameRate;
    private final File stickerInstalledDir;
    private final NvRational stickerPixelAspectRatio;

    private MeisheEditorDelegate(File file, File file2, SharedPreferences sharedPreferences) {
        this.prefs = sharedPreferences;
        this.LOCK = new Object();
        this.ffmpegEditorDelegate = FFMpegEditorDelegate.Companion.getInstance(file);
        this.stickerFrameRate = new NvRational(20, 1);
        this.stickerPixelAspectRatio = new NvRational(1, 1);
        this.stickerInstalledDir = new File(file, "EditorSticker/InstalledSticker");
        this.stickerCopiedSrcDir = new File(file, "EditorSticker/CopiedStickerSrc");
        this.flyingAnimatedStickerConvertTasks = new ConcurrentHashMap<>();
        if (!this.stickerInstalledDir.exists()) {
            this.stickerInstalledDir.mkdirs();
        }
        if (this.stickerCopiedSrcDir.exists()) {
            return;
        }
        this.stickerCopiedSrcDir.mkdirs();
    }

    public /* synthetic */ MeisheEditorDelegate(File file, File file2, SharedPreferences sharedPreferences, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, file2, sharedPreferences);
    }

    /* compiled from: MeisheEditorDelegate.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MeisheEditorDelegate getInstance() {
            return MeisheEditorDelegate.instance;
        }

        public final void setInstance(MeisheEditorDelegate meisheEditorDelegate) {
            MeisheEditorDelegate.instance = meisheEditorDelegate;
        }

        public final MeisheEditorDelegate getInstance(File localFileDir, File localCacheDir, SharedPreferences prefs) {
            Intrinsics.checkParameterIsNotNull(localFileDir, "localFileDir");
            Intrinsics.checkParameterIsNotNull(localCacheDir, "localCacheDir");
            Intrinsics.checkParameterIsNotNull(prefs, "prefs");
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (getInstance() == null) {
                synchronized (MeisheEditorDelegate.class) {
                    if (MeisheEditorDelegate.Companion.getInstance() == null) {
                        MeisheEditorDelegate.Companion.setInstance(new MeisheEditorDelegate(localFileDir, localCacheDir, prefs, defaultConstructorMarker));
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            MeisheEditorDelegate companion = getInstance();
            if (companion != null) {
                return companion;
            }
            Intrinsics.throwNpe();
            throw null;
        }
    }

    @Override // ffmpeg.base.IEditor
    public void onLocalStickerCacheCleared() {
        IEditor.DefaultImpls.onLocalStickerCacheCleared(this);
        if (!this.stickerInstalledDir.exists()) {
            this.stickerInstalledDir.mkdirs();
        }
        if (this.stickerCopiedSrcDir.exists()) {
            return;
        }
        this.stickerCopiedSrcDir.mkdirs();
    }

    @Override // ffmpeg.base.IEditor
    public File getTargetStickerInstallFile(StickerInfoPack stickerInfo) {
        Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        return StickerInfoPack.composeInstallFileForAnimatedSticker(stickerInfo, this.stickerInstalledDir, ".caf");
    }

    @Override // ffmpeg.base.IEditor
    public File getStickerCopiedSrcFile(StickerInfoPack stickerInfo) {
        Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        String str = stickerInfo.srcImagePath;
        if (str == null) {
            return null;
        }
        if (Intrinsics.areEqual(new File(str).getParent(), this.stickerCopiedSrcDir.getAbsolutePath())) {
            return new File(stickerInfo.srcImagePath);
        }
        if (Utils.isGif(stickerInfo.srcImagePath) || Utils.isWebP(stickerInfo.srcImagePath)) {
            return StickerInfoPack.composeStickerCopiedSrcFile(stickerInfo, this.stickerCopiedSrcDir);
        }
        return StickerInfoPack.composeStickerCopiedSrcFile(stickerInfo, this.stickerInstalledDir);
    }

    @Override // ffmpeg.base.IEditor
    public boolean hasStickerTemplatedInstalled(StickerInfoPack stickerInfoPack) {
        installStickerTemplate();
        String str = this.animatedStickerTemplateUuid;
        if (str == null) {
            return false;
        }
        if (stickerInfoPack == null) {
            return true;
        }
        stickerInfoPack.templateUuid = str;
        return true;
    }

    @Override // ffmpeg.base.IEditor
    public void installSticker(Context context, StickerInfoPack stickerInfo, boolean z, ExecutorService executorService, IEditorBaseCallback iEditorBaseCallback) {
        AsyncTask staticStickerInstallExecutor;
        AnimatedStickerInstallExecutor animatedStickerInstallExecutorRemove;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        if (stickerInfo.srcImagePath == null) {
            if (iEditorBaseCallback != null) {
                iEditorBaseCallback.onFail();
                return;
            }
            return;
        }
        File targetStickerInstallFile = getTargetStickerInstallFile(stickerInfo);
        stickerInfo.installedPath = targetStickerInstallFile != null ? targetStickerInstallFile.getAbsolutePath() : null;
        boolean z2 = true;
        if (targetStickerInstallFile != null && targetStickerInstallFile.exists()) {
            installStickerTemplate();
            if (this.animatedStickerTemplateUuid != null) {
                stickerInfo.templateUuid = this.animatedStickerTemplateUuid;
                if (iEditorBaseCallback != null) {
                    iEditorBaseCallback.onSuccess();
                    return;
                }
                return;
            }
            if (iEditorBaseCallback != null) {
                iEditorBaseCallback.onFail();
            }
            if (iEditorBaseCallback != null) {
                iEditorBaseCallback.onFail();
                return;
            }
            return;
        }
        if (!Utils.isWebP(stickerInfo.srcImagePath) && !Utils.isGif(stickerInfo.srcImagePath)) {
            z2 = false;
        }
        if (z2) {
            staticStickerInstallExecutor = new AnimatedStickerInstallExecutor(this, context, stickerInfo, z, iEditorBaseCallback);
        } else {
            staticStickerInstallExecutor = new StaticStickerInstallExecutor(this, context, stickerInfo, z, iEditorBaseCallback);
        }
        if (executorService == null) {
            staticStickerInstallExecutor.execute(new Void[0]);
        } else {
            staticStickerInstallExecutor.executeOnExecutor(executorService, new Void[0]);
        }
        if (z2) {
            String key = stickerInfo.getPrefsKey();
            if (this.flyingAnimatedStickerConvertTasks.contains(key) && (animatedStickerInstallExecutorRemove = this.flyingAnimatedStickerConvertTasks.remove(key)) != null) {
                animatedStickerInstallExecutorRemove.abort();
            }
            ConcurrentHashMap<String, AnimatedStickerInstallExecutor> concurrentHashMap = this.flyingAnimatedStickerConvertTasks;
            Intrinsics.checkExpressionValueIsNotNull(key, "key");
            concurrentHashMap.put(key, (AnimatedStickerInstallExecutor) staticStickerInstallExecutor);
        }
    }

    @Override // ffmpeg.base.IEditor
    public void execute(MediaEditingConfig config, ExecutorService executorService, IEditorExecuteCallback iEditorExecuteCallback) {
        Intrinsics.checkParameterIsNotNull(config, "config");
        this.ffmpegEditorDelegate.execute(config, executorService, iEditorExecuteCallback);
    }

    @Override // ffmpeg.base.IEditor
    public StreamInfo fetchStreamingInfo(String input) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        return this.ffmpegEditorDelegate.fetchStreamingInfo(input);
    }

    @Override // ffmpeg.base.IEditor
    public void abort(MediaEditingConfig config) {
        Intrinsics.checkParameterIsNotNull(config, "config");
        this.ffmpegEditorDelegate.abort(config);
    }

    @Override // ffmpeg.base.IEditor
    public void abortAll(boolean z) {
        this.ffmpegEditorDelegate.abortAll(z);
    }

    @Override // ffmpeg.base.IEditor
    public void abortAnimatedStickerConvertTask(StickerInfoPack stickerInfo) {
        Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
        AnimatedStickerInstallExecutor animatedStickerInstallExecutorRemove = this.flyingAnimatedStickerConvertTasks.remove(stickerInfo.getPrefsKey());
        if (animatedStickerInstallExecutorRemove != null) {
            animatedStickerInstallExecutorRemove.abort();
        }
    }

    @Override // ffmpeg.base.IEditor
    public void abortAnimatedStickerConvertTasks() {
        Iterator<AnimatedStickerInstallExecutor> it = this.flyingAnimatedStickerConvertTasks.values().iterator();
        while (it.hasNext()) {
            it.next().abort();
        }
        this.flyingAnimatedStickerConvertTasks.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void installStickerTemplate() {
        if (this.animatedStickerTemplateUuid != null) {
            return;
        }
        this.animatedStickerTemplateUuid = this.prefs.getString(MeisheEditorDelegateKt.ANIMATED_STICKER_TEMPLATE_UUID_KEY, null);
        if (this.animatedStickerTemplateUuid != null) {
            return;
        }
        synchronized (this.LOCK) {
            if (this.animatedStickerTemplateUuid == null) {
                StringBuilder sb = new StringBuilder();
                NvsStreamingContext nvsStreamingContext = NvsStreamingContext.getInstance();
                Intrinsics.checkExpressionValueIsNotNull(nvsStreamingContext, "NvsStreamingContext.getInstance()");
                int iInstallAssetPackage = nvsStreamingContext.getAssetPackageManager().installAssetPackage(MeisheEditorDelegateKt.ANIMATED_STICKER_TEMPLATE_PATH, MeisheEditorDelegateKt.ANIMATED_STICKER_LICENSE_PATH, 3, true, sb);
                if (iInstallAssetPackage == 0 || iInstallAssetPackage == 2) {
                    this.animatedStickerTemplateUuid = sb.toString();
                    this.prefs.edit().putString(MeisheEditorDelegateKt.ANIMATED_STICKER_TEMPLATE_UUID_KEY, sb.toString()).apply();
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* compiled from: MeisheEditorDelegate.kt */
    public final class StaticStickerInstallExecutor extends AsyncTask<Void, Float, Boolean> {
        private final IEditorBaseCallback callback;
        private final Context context;
        private final StickerInfoPack stickerInfoPack;
        final /* synthetic */ MeisheEditorDelegate this$0;
        private final boolean trial;

        public StaticStickerInstallExecutor(MeisheEditorDelegate meisheEditorDelegate, Context context, StickerInfoPack stickerInfoPack, boolean z, IEditorBaseCallback iEditorBaseCallback) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(stickerInfoPack, "stickerInfoPack");
            this.this$0 = meisheEditorDelegate;
            this.context = context;
            this.stickerInfoPack = stickerInfoPack;
            this.trial = z;
            this.callback = iEditorBaseCallback;
        }

        public final IEditorBaseCallback getCallback() {
            return this.callback;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            IEditorBaseCallback iEditorBaseCallback = this.callback;
            if (iEditorBaseCallback != null) {
                iEditorBaseCallback.onStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... params) throws Throwable {
            Intrinsics.checkParameterIsNotNull(params, "params");
            StickerInfoPack stickerInfoPack = this.stickerInfoPack;
            String str = stickerInfoPack.srcImagePath;
            boolean z = false;
            if (str == null || stickerInfoPack.installedPath == null) {
                return false;
            }
            File file = new File(str);
            File file2 = new File(this.stickerInfoPack.installedPath);
            try {
                String str2 = this.stickerInfoPack.srcImagePath;
                Intrinsics.checkExpressionValueIsNotNull(str2, "stickerInfoPack.srcImagePath");
                if (StringsKt__StringsJVMKt.startsWith$default(str2, "assets://", false, 2, null)) {
                    FileUtils.moveFromAssetsToFile(this.context, this.stickerInfoPack.srcImagePath, file2);
                } else {
                    Utils.copyFile(file, file2);
                }
                if (this.trial) {
                    FileUtils.deleteFile(file);
                }
                this.this$0.installStickerTemplate();
                String str3 = this.this$0.animatedStickerTemplateUuid;
                if (str3 != null) {
                    this.stickerInfoPack.templateUuid = str3;
                    z = true;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return Boolean.valueOf(z);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((StaticStickerInstallExecutor) bool);
            if (Intrinsics.areEqual((Object) bool, (Object) true) && new File(this.stickerInfoPack.installedPath).exists()) {
                StickerInfoPack stickerInfoPack = this.stickerInfoPack;
                stickerInfoPack.srcImagePath = stickerInfoPack.installedPath;
                stickerInfoPack.visibleDurationInMs = 5000;
                IEditorBaseCallback iEditorBaseCallback = this.callback;
                if (iEditorBaseCallback != null) {
                    iEditorBaseCallback.onSuccess();
                    return;
                }
                return;
            }
            String str = this.stickerInfoPack.installedPath;
            if (str != null) {
                File file = new File(str);
                if (file.exists()) {
                    FileUtils.deleteFile(file);
                }
            }
            IEditorBaseCallback iEditorBaseCallback2 = this.callback;
            if (iEditorBaseCallback2 != null) {
                iEditorBaseCallback2.onFail();
            }
        }
    }

    /* compiled from: MeisheEditorDelegate.kt */
    public final class AnimatedStickerInstallExecutor extends AsyncTask<Void, Float, Boolean> {
        private boolean abort;
        private final IEditorBaseCallback callback;
        private final Context context;
        private boolean convertResultReturned;
        private final StickerInfoPack stickerInfoPack;
        final /* synthetic */ MeisheEditorDelegate this$0;
        private final boolean trial;

        public AnimatedStickerInstallExecutor(MeisheEditorDelegate meisheEditorDelegate, Context context, StickerInfoPack stickerInfoPack, boolean z, IEditorBaseCallback iEditorBaseCallback) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(stickerInfoPack, "stickerInfoPack");
            this.this$0 = meisheEditorDelegate;
            this.context = context;
            this.stickerInfoPack = stickerInfoPack;
            this.trial = z;
            this.callback = iEditorBaseCallback;
        }

        public final IEditorBaseCallback getCallback() {
            return this.callback;
        }

        public final void abort() {
            this.abort = true;
            String str = this.stickerInfoPack.installedPath;
            if (str != null) {
                File file = new File(str);
                if (file.exists()) {
                    FileUtils.deleteFile(file);
                }
            }
            IEditorBaseCallback iEditorBaseCallback = this.callback;
            if (iEditorBaseCallback != null) {
                iEditorBaseCallback.onFail();
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            IEditorBaseCallback iEditorBaseCallback = this.callback;
            if (iEditorBaseCallback != null) {
                iEditorBaseCallback.onStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.Void... r19) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 238
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.editor.provider.MeisheEditorDelegate.AnimatedStickerInstallExecutor.doInBackground(java.lang.Void[]):java.lang.Boolean");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            if (this.abort) {
                return;
            }
            if (!Intrinsics.areEqual((Object) bool, (Object) true) || !new File(this.stickerInfoPack.installedPath).exists()) {
                this.this$0.flyingAnimatedStickerConvertTasks.remove(this.stickerInfoPack.getPrefsKey());
                String str = this.stickerInfoPack.installedPath;
                if (str != null) {
                    File file = new File(str);
                    if (file.exists()) {
                        FileUtils.deleteFile(file);
                    }
                }
                IEditorBaseCallback iEditorBaseCallback = this.callback;
                if (iEditorBaseCallback != null) {
                    iEditorBaseCallback.onFail();
                    return;
                }
                return;
            }
            this.this$0.flyingAnimatedStickerConvertTasks.remove(this.stickerInfoPack.getPrefsKey());
            IEditorBaseCallback iEditorBaseCallback2 = this.callback;
            if (iEditorBaseCallback2 != null) {
                iEditorBaseCallback2.onSuccess();
            }
        }
    }
}
