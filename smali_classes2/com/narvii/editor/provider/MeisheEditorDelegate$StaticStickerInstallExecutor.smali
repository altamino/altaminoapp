.class public final Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;
.super Landroid/os/AsyncTask;
.source "MeisheEditorDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/provider/MeisheEditorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StaticStickerInstallExecutor"
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeisheEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeisheEditorDelegate.kt\ncom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor\n*L\n1#1,343:1\n*E\n"
.end annotation


# instance fields
.field private final callback:Lffmpeg/base/IEditorBaseCallback;

.field private final context:Landroid/content/Context;

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

    .line 194
    iput-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    .line 195
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iput-boolean p4, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->trial:Z

    iput-object p5, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_2

    .line 204
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v2, v2, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v2, v2, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    const-string v3, "stickerInfoPack.srcImagePath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "assets://"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v3, v3, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/narvii/util/FileUtils;->moveFromAssetsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 213
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->trial:Z

    if-eqz v0, :cond_2

    .line 214
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-static {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$installStickerTemplate(Lcom/narvii/editor/provider/MeisheEditorDelegate;)V

    .line 217
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->this$0:Lcom/narvii/editor/provider/MeisheEditorDelegate;

    invoke-static {p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate;->access$getAnimatedStickerTemplateUuid$p(Lcom/narvii/editor/provider/MeisheEditorDelegate;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iput-object p1, v0, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 206
    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 202
    :cond_4
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 194
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getCallback()Lffmpeg/base/IEditorBaseCallback;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 229
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 230
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v0, v0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    const/16 v0, 0x1388

    .line 232
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 233
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lffmpeg/base/IEditorBaseCallback;->onSuccess()V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->stickerInfoPack:Lcom/narvii/video/model/StickerInfoPack;

    iget-object p1, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 236
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 238
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lffmpeg/base/IEditorBaseCallback;->onFail()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/editor/provider/MeisheEditorDelegate$StaticStickerInstallExecutor;->callback:Lffmpeg/base/IEditorBaseCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lffmpeg/base/IEditorBaseCallback;->onStart()V

    :cond_0
    return-void
.end method
