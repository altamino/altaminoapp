package com.narvii.editors;

import android.content.Context;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import g7.a;
import g7.b;
import g7.c;
import g7.d;
import java.io.File;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class NVEditorDelegate implements a {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private static volatile NVEditorDelegate instance;

    @NotNull
    private a ffmpegEditorDelegate;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        @Nullable
        public final NVEditorDelegate getInstance() {
            return NVEditorDelegate.instance;
        }

        private Companion() {
        }

        @NotNull
        public final NVEditorDelegate getInstance(@NotNull File localFileDir) {
            t.j(localFileDir, "localFileDir");
            if (getInstance() == null) {
                synchronized (NVEditorDelegate.class) {
                    try {
                        Companion companion = NVEditorDelegate.Companion;
                        if (companion.getInstance() == null) {
                            companion.setInstance(new NVEditorDelegate(localFileDir, null));
                        }
                        l0 l0Var = l0.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            NVEditorDelegate companion2 = getInstance();
            t.g(companion2);
            return companion2;
        }

        public final void setInstance(@Nullable NVEditorDelegate nVEditorDelegate) {
            NVEditorDelegate.instance = nVEditorDelegate;
        }
    }

    public /* synthetic */ NVEditorDelegate(File file, k kVar) {
        this(file);
    }

    @Override // g7.a
    public void installSticker(@NotNull Context context, @NotNull StickerInfoPack stickerInfo, boolean z6, @Nullable ExecutorService executorService, @Nullable b bVar) {
        t.j(context, "context");
        t.j(stickerInfo, "stickerInfo");
    }

    private NVEditorDelegate(File file) {
        this.ffmpegEditorDelegate = ffmpeg.executable.a.Companion.g(file);
    }

    @Override // g7.a
    public void abort(@NotNull d config) {
        t.j(config, "config");
        this.ffmpegEditorDelegate.abort(config);
    }

    @Override // g7.a
    public void abortAll(boolean z6) {
        this.ffmpegEditorDelegate.abortAll(z6);
    }

    @Override // g7.a
    public void execute(@NotNull d config, @Nullable ExecutorService executorService, @Nullable c cVar) {
        t.j(config, "config");
        this.ffmpegEditorDelegate.execute(config, executorService, cVar);
    }

    @Override // g7.a
    @NotNull
    public StreamInfo fetchStreamingInfo(@NotNull String input) {
        t.j(input, "input");
        return this.ffmpegEditorDelegate.fetchStreamingInfo(input);
    }

    @Override // g7.a
    public void abortAnimatedStickerConvertTask(@NotNull StickerInfoPack stickerInfoPack) {
        a.C0380a.a(this, stickerInfoPack);
    }

    @Override // g7.a
    public void abortAnimatedStickerConvertTasks() {
        a.C0380a.b(this);
    }

    @Override // g7.a
    @Nullable
    public File getStickerCopiedSrcFile(@NotNull StickerInfoPack stickerInfoPack) {
        return a.C0380a.c(this, stickerInfoPack);
    }

    @Override // g7.a
    @Nullable
    public File getTargetStickerInstallFile(@NotNull StickerInfoPack stickerInfoPack) {
        return a.C0380a.d(this, stickerInfoPack);
    }

    @Override // g7.a
    public boolean hasStickerTemplatedInstalled(@Nullable StickerInfoPack stickerInfoPack) {
        return a.C0380a.e(this, stickerInfoPack);
    }

    @Override // g7.a
    public void onLocalStickerCacheCleared() {
        a.C0380a.g(this);
    }
}
