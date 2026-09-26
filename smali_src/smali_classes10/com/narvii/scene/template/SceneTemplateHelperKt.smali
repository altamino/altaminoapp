.class public final Lcom/narvii/scene/template/SceneTemplateHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getTemporaryDraftRootDir()Ljava/io/File;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lcom/narvii/util/Utils;->getTmpDir(Z)Ljava/io/File;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "temporaryDraft"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_0
    return-object v0
.end method
