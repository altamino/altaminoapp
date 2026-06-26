.class public final Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;
.super Ljava/lang/Object;
.source "SceneTemplateImageDownloadHelper.kt"

# interfaces
.implements Lcom/narvii/util/fileloader/INVFileCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SceneFileCache"
.end annotation


# instance fields
.field private final dir:Ljava/io/File;

.field private final diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;Ljava/io/File;)V
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

    .line 110
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    .line 111
    new-instance p1, Lcom/narvii/util/fileloader/DiskDaemonHelper;

    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    const-string v0, "storyTemplate"

    invoke-direct {p1, p2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->touch(Ljava/io/File;)V

    return-object v0
.end method

.method public final getDir()Ljava/io/File;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 122
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public touch(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    return-void
.end method

.method public trimAndFlush(IJ)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->trimAndFlush(IJ)V

    return-void
.end method
