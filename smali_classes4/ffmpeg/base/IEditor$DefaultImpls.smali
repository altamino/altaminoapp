.class public final Lffmpeg/base/IEditor$DefaultImpls;
.super Ljava/lang/Object;
.source "IEditor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffmpeg/base/IEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static abortAnimatedStickerConvertTask(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 0

    const-string p0, "stickerInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static abortAnimatedStickerConvertTasks(Lffmpeg/base/IEditor;)V
    .locals 0

    return-void
.end method

.method public static getStickerCopiedSrcFile(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 0

    const-string p0, "stickerInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTargetStickerInstallFile(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 0

    const-string p0, "stickerInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasStickerTemplatedInstalled(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static installSticker(Lffmpeg/base/IEditor;Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorBaseCallback;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "stickerInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onLocalStickerCacheCleared(Lffmpeg/base/IEditor;)V
    .locals 0

    return-void
.end method
