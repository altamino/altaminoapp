.class public interface abstract Lffmpeg/base/IEditor;
.super Ljava/lang/Object;
.source "IEditor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lffmpeg/base/IEditor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract abort(Lffmpeg/base/MediaEditingConfig;)V
.end method

.method public abstract abortAll(Z)V
.end method

.method public abstract abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V
.end method

.method public abstract abortAnimatedStickerConvertTasks()V
.end method

.method public abstract execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V
.end method

.method public abstract fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
.end method

.method public abstract getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
.end method

.method public abstract getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
.end method

.method public abstract hasStickerTemplatedInstalled(Lcom/narvii/video/model/StickerInfoPack;)Z
.end method

.method public abstract installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorBaseCallback;)V
.end method

.method public abstract onLocalStickerCacheCleared()V
.end method
