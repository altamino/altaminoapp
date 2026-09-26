.class public interface abstract Lg7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg7/a$a;
    }
.end annotation


# virtual methods
.method public abstract abort(Lg7/d;)V
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract abortAll(Z)V
.end method

.method public abstract abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract abortAnimatedStickerConvertTasks()V
.end method

.method public abstract execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lg7/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract hasStickerTemplatedInstalled(Lcom/narvii/video/model/StickerInfoPack;)Z
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lg7/b;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lg7/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLocalStickerCacheCleared()V
.end method
