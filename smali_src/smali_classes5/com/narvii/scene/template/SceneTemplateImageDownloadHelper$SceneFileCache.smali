.class public final Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;Ljava/io/File;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "dir"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "storyTemplate"

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 23
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->clear()V

    .line 6
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "fileName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->touch(Ljava/io/File;)V

    .line 16
    return-object v0
.end method

.method public final getDir()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "fileName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "file"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    .line 32
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "fileName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->dir:Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public touch(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    .line 11
    return-void
.end method

.method public trimAndFlush(IJ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileCache;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->trimAndFlush(IJ)V

    .line 6
    return-void
.end method
