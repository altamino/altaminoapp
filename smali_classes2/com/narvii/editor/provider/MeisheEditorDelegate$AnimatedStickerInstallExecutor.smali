.class public final Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;
.super Landroid/os/AsyncTask;
.source "MeisheEditorDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/provider/MeisheEditorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AnimatedStickerInstallExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private abort:Z

.field private final callback:Lffmpeg/base/IEditorBaseCallback;

.field private final context:Landroid/content/Context;

.field private convertResultReturned:Z

.field private final stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

.field final synthetic this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

.field private final trial:Z


# direct methods
.method public constructor <init>(Lcom/narvii/editor/provider/MeisheEditorDelegate;Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLffmpeg/base/IEditorBaseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/narvii/video/model/StickerInfoPack;",
            "Z",
            "Lffmpeg/base/IEditorBaseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stickerInfoPack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    .line 247
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iput-boolean p4, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->trial:Z

    iput-object p5, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    return-void
.end method

.method public static final synthetic access$getConvertResultReturned$p(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;)Z
    .locals 0

    .line 246
    iget-boolean p0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->convertResultReturned:Z

    return p0
.end method

.method public static final synthetic access$getStickerInfoPack$p(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;)Lcom/narvii/video/model/StickerInfoPack;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    return-object p0
.end method

.method public static final synthetic access$setConvertResultReturned$p(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->convertResultReturned:Z

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 2

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->abort:Z

    .line 253
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v0, v0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 254
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {v1}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lffmpeg/base/IEditorBaseCallback;->onFail()V

    :cond_1
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "params"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-boolean v0, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->abort:Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v4, v0, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v0, v0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 270
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    iget-object v4, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    iget-object v5, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    invoke-virtual {v4, v5}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 273
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v5

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_4

    .line 276
    :cond_3
    :try_start_0
    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 278
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-object v3

    :cond_4
    const/4 v7, 0x0

    .line 282
    :goto_1
    iget-object v8, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 283
    iget-boolean v4, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->trial:Z

    if-eqz v4, :cond_5

    if-eqz v7, :cond_5

    .line 284
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 286
    :cond_5
    new-instance v0, Lcom/meishe/cafconvertor/NvCafCreator;

    iget-object v9, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->context:Landroid/content/Context;

    iget-object v4, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v10, v4, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    iget-object v11, v4, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x2

    .line 287
    iget-object v4, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-static {v4}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$getStickerFrameRate$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Lcom/meishe/cafconvertor/NvRational;

    move-result-object v15

    iget-object v4, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-static {v4}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$getStickerPixelAspectRatio$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Lcom/meishe/cafconvertor/NvRational;

    move-result-object v16

    const/16 v17, 0x1

    move-object v8, v0

    .line 286
    invoke-direct/range {v8 .. v17}, Lcom/meishe/cafconvertor/NvCafCreator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILcom/meishe/cafconvertor/NvRational;Lcom/meishe/cafconvertor/NvRational;I)V

    .line 289
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v2, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 290
    new-instance v5, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;

    invoke-direct {v5, v1, v0, v4}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor$doInBackground$1;-><init>(Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;Lcom/meishe/cafconvertor/NvCafCreator;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v5}, Lcom/meishe/cafconvertor/NvCafCreator;->setOnConvertListener(Lcom/meishe/cafconvertor/NvCafCreator$OnConvertListener;)V

    .line 308
    :try_start_1
    iget-object v5, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v5, v5, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/NvCafCreator;->start()I

    goto :goto_2

    .line 309
    :cond_6
    iget-object v5, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v5, v5, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/NvCafCreator;->startWebpToCaf()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    :goto_2
    iget-boolean v0, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->convertResultReturned:Z

    if-nez v0, :cond_7

    iget-boolean v0, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->abort:Z

    if-nez v0, :cond_7

    const-wide/16 v7, 0xa

    .line 319
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    .line 321
    :cond_7
    iget-boolean v0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->abort:Z

    if-nez v0, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v3

    :catch_1
    move-exception v0

    .line 313
    iput-boolean v6, v1, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->convertResultReturned:Z

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NvsWebpDecoder failed, error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-object v3

    .line 282
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    :cond_b
    :goto_3
    return-object v3
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 246
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getCallback()Lffmpeg/base/IEditorBaseCallback;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->abort:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 328
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v0, v0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-static {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$getFlyingAnimatedStickerConvertTasks$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    invoke-virtual {v0}, Lcom/narvii/video/model/StickerInfoPack;->getPrefsKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lffmpeg/base/IEditorBaseCallback;->onSuccess()V

    goto :goto_0

    .line 332
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-static {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$getFlyingAnimatedStickerConvertTasks$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    invoke-virtual {v0}, Lcom/narvii/video/model/StickerInfoPack;->getPrefsKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object p1, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 334
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 336
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 339
    :cond_2
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lffmpeg/base/IEditorBaseCallback;->onFail()V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$AnimatedStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lffmpeg/base/IEditorBaseCallback;->onStart()V

    :cond_0
    return-void
.end method
