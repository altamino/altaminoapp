.class public final Lcom/narvii/scene/template/SceneTemplateHelperKt;
.super Ljava/lang/Object;
.source "SceneTemplateHelper.kt"


# direct methods
.method public static final getTemporaryDraftRootDir()Ljava/io/File;
    .locals 3

    .line 383
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getTmpDir(Z)Ljava/io/File;

    move-result-object v1

    const-string v2, "temporaryDraft"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method
