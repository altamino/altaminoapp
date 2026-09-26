package com.narvii.scene.helper;

import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import com.narvii.video.services.VideoManager;
import java.io.File;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class StickerHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String STICKER_COPIED_SRC_DIR = "EditorSticker/CopiedStickerSrc";

    @NotNull
    public static final String STICKER_INSTALLED_DIR = "EditorSticker/InstalledSticker";

    @NotNull
    private final File installedStickerFile;

    @NotNull
    private final NVContext nvContext;

    @NotNull
    private final File stickerSrcFile;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public StickerHelper(@NotNull NVContext nvContext) {
        t.j(nvContext, "nvContext");
        this.nvContext = nvContext;
        this.installedStickerFile = new File(nvContext.getContext().getFilesDir(), STICKER_INSTALLED_DIR);
        this.stickerSrcFile = new File(nvContext.getContext().getFilesDir(), STICKER_COPIED_SRC_DIR);
    }

    public final void clearCache() {
        Utils.deleteDir(this.installedStickerFile);
        Utils.deleteDir(this.stickerSrcFile);
        ((VideoManager) this.nvContext.getService("videoManager")).onLocalStickerCacheCleared();
    }

    public final long getCacheSize() {
        return Utils.getFolderSize(this.installedStickerFile) + Utils.getFolderSize(this.stickerSrcFile);
    }
}
