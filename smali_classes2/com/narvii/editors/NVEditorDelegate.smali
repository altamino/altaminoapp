.class public final Lcom/narvii/editors/NVEditorDelegate;
.super Ljava/lang/Object;
.source "NVEditorDelegate.kt"

# interfaces
.implements Lffmpeg/base/IEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editors/NVEditorDelegate$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editors/NVEditorDelegate$Companion;

.field private static volatile instance:Lcom/narvii/editors/NVEditorDelegate;


# instance fields
.field private ffmpegEditorDelegate:Lffmpeg/base/IEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editors/NVEditorDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editors/NVEditorDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editors/NVEditorDelegate;->Companion:Lcom/narvii/editors/NVEditorDelegate$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual {v0, p1}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getInstance(Ljava/io/File;)Lffmpeg/executable/FFMpegEditorDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/editors/NVEditorDelegate;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/narvii/editors/NVEditorDelegate;
    .locals 1

    .line 14
    sget-object v0, Lcom/narvii/editors/NVEditorDelegate;->instance:Lcom/narvii/editors/NVEditorDelegate;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/narvii/editors/NVEditorDelegate;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/narvii/editors/NVEditorDelegate;->instance:Lcom/narvii/editors/NVEditorDelegate;

    return-void
.end method


# virtual methods
.method public abort(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->abort(Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public abortAll(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->abortAll(Z)V

    return-void
.end method

.method public abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1

    const-string v0, "stickerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lffmpeg/base/IEditor$DefaultImpls;->abortAnimatedStickerConvertTask(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)V

    return-void
.end method

.method public abortAnimatedStickerConvertTasks()V
    .locals 0

    .line 14
    invoke-static {p0}, Lffmpeg/base/IEditor$DefaultImpls;->abortAnimatedStickerConvertTasks(Lffmpeg/base/IEditor;)V

    return-void
.end method

.method public execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1, p2, p3}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-void
.end method

.method public fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/narvii/editors/NVEditorDelegate;->ffmpegEditorDelegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object p1

    return-object p1
.end method

.method public getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 1

    const-string v0, "stickerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lffmpeg/base/IEditor$DefaultImpls;->getStickerCopiedSrcFile(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 1

    const-string v0, "stickerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lffmpeg/base/IEditor$DefaultImpls;->getTargetStickerInstallFile(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public hasStickerTemplatedInstalled(Lcom/narvii/video/model/StickerInfoPack;)Z
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lffmpeg/base/IEditor$DefaultImpls;->hasStickerTemplatedInstalled(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)Z

    move-result p1

    return p1
.end method

.method public installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorBaseCallback;)V
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "stickerInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onLocalStickerCacheCleared()V
    .locals 0

    .line 14
    invoke-static {p0}, Lffmpeg/base/IEditor$DefaultImpls;->onLocalStickerCacheCleared(Lffmpeg/base/IEditor;)V

    return-void
.end method
