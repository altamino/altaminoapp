package com.narvii.scene.helper;

import android.content.Context;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import com.narvii.video.services.VideoManager;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StickerHelper.kt */
/* loaded from: classes3.dex */
public final class StickerHelper {
    public static final Companion Companion = new Companion(null);
    public static final String STICKER_COPIED_SRC_DIR = "EditorSticker/CopiedStickerSrc";
    public static final String STICKER_INSTALLED_DIR = "EditorSticker/InstalledSticker";
    private final File installedStickerFile;
    private final NVContext nvContext;
    private final File stickerSrcFile;

    public StickerHelper(NVContext nvContext) {
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        this.nvContext = nvContext;
        Context context = this.nvContext.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "nvContext.context");
        this.installedStickerFile = new File(context.getFilesDir(), "EditorSticker/InstalledSticker");
        Context context2 = this.nvContext.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "nvContext.context");
        this.stickerSrcFile = new File(context2.getFilesDir(), "EditorSticker/CopiedStickerSrc");
    }

    public final NVContext getNvContext() {
        return this.nvContext;
    }

    /* compiled from: StickerHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final long getCacheSize() {
        return Utils.getFolderSize(this.installedStickerFile) + Utils.getFolderSize(this.stickerSrcFile);
    }

    public final void clearCache() {
        Utils.deleteDir(this.installedStickerFile);
        Utils.deleteDir(this.stickerSrcFile);
        ((VideoManager) this.nvContext.getService("videoManager")).onLocalStickerCacheCleared();
    }
}
