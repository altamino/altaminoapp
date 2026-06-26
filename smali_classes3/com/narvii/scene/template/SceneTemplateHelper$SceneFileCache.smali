.class public final Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;
.super Ljava/lang/Object;
.source "SceneTemplateHelper.kt"

# interfaces
.implements Lcom/narvii/util/fileloader/INVFileCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/SceneTemplateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SceneFileCache"
.end annotation


# instance fields
.field private final dir:Ljava/io/File;

.field private final diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->dir:Ljava/io/File;

    .line 347
    new-instance p1, Lcom/narvii/util/fileloader/DiskDaemonHelper;

    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->dir:Ljava/io/File;

    const-string v0, "storyTemplate"

    invoke-direct {p1, p2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, v0}, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->touch(Ljava/io/File;)V

    return-object v0
.end method

.method public final getDir()Ljava/io/File;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->dir:Ljava/io/File;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 358
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public touch(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    return-void
.end method

.method public trimAndFlush(IJ)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->trimAndFlush(IJ)V

    return-void
.end method
