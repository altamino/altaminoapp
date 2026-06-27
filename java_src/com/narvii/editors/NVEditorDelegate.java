package com.narvii.editors;

import android.content.Context;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import ffmpeg.base.IEditor;
import ffmpeg.base.IEditorBaseCallback;
import ffmpeg.base.IEditorExecuteCallback;
import ffmpeg.base.MediaEditingConfig;
import ffmpeg.executable.FFMpegEditorDelegate;
import java.io.File;
import java.util.concurrent.ExecutorService;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVEditorDelegate.kt */
/* loaded from: classes2.dex */
public final class NVEditorDelegate implements IEditor {
    public static final Companion Companion = new Companion(null);
    private static volatile NVEditorDelegate instance;
    private IEditor ffmpegEditorDelegate;

    @Override // ffmpeg.base.IEditor
    public void installSticker(Context context, StickerInfoPack stickerInfo, boolean z, ExecutorService executorService, IEditorBaseCallback iEditorBaseCallback) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(stickerInfo, "stickerInfo");
    }

    private NVEditorDelegate(File file) {
        this.ffmpegEditorDelegate = FFMpegEditorDelegate.Companion.getInstance(file);
    }

    public /* synthetic */ NVEditorDelegate(File file, DefaultConstructorMarker defaultConstructorMarker) {
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
    public void onLocalStickerCacheCleared() {
        IEditor.DefaultImpls.onLocalStickerCacheCleared(this);
    }

    /* compiled from: NVEditorDelegate.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final NVEditorDelegate getInstance() {
            return NVEditorDelegate.instance;
        }

        public final void setInstance(NVEditorDelegate nVEditorDelegate) {
            NVEditorDelegate.instance = nVEditorDelegate;
        }

        public final NVEditorDelegate getInstance(File localFileDir) {
            Intrinsics.checkParameterIsNotNull(localFileDir, "localFileDir");
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (getInstance() == null) {
                synchronized (NVEditorDelegate.class) {
                    if (NVEditorDelegate.Companion.getInstance() == null) {
                        NVEditorDelegate.Companion.setInstance(new NVEditorDelegate(localFileDir, defaultConstructorMarker));
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
            NVEditorDelegate companion = getInstance();
            if (companion != null) {
                return companion;
            }
            Intrinsics.throwNpe();
            throw null;
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
}
