.class final Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;
.super Ljava/lang/Object;
.source "SceneDraftHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/service/SceneDraftHelper;->correctCoverImage(Lcom/narvii/scene/model/SceneDraft;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $correctListener:Lkotlin/jvm/functions/Function1;

.field final synthetic $draft:Lcom/narvii/scene/model/SceneDraft;

.field final synthetic $sceneCovImg:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/scene/service/SceneDraftHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/service/SceneDraftHelper;Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->this$0:Lcom/narvii/scene/service/SceneDraftHelper;

    iput-object p2, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$draft:Lcom/narvii/scene/model/SceneDraft;

    iput-object p3, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$sceneCovImg:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$correctListener:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "SceneDraftHelper"

    .line 132
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->this$0:Lcom/narvii/scene/service/SceneDraftHelper;

    invoke-static {v2}, Lcom/narvii/scene/service/SceneDraftHelper;->access$getDraftManager$p(Lcom/narvii/scene/service/SceneDraftHelper;)Lcom/narvii/post/DraftManager;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$draft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v3, v3, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "coverImage_only_folder"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    invoke-static {v1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->this$0:Lcom/narvii/scene/service/SceneDraftHelper;

    invoke-static {v2}, Lcom/narvii/scene/service/SceneDraftHelper;->access$getNvContext$p(Lcom/narvii/scene/service/SceneDraftHelper;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$sceneCovImg:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->this$0:Lcom/narvii/scene/service/SceneDraftHelper;

    iget-object v5, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$sceneCovImg:Ljava/lang/String;

    const-string v6, "sceneCovImg"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/narvii/scene/service/SceneDraftHelper;->access$sceneCovImg2draftCovImgName(Lcom/narvii/scene/service/SceneDraftHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/narvii/util/FileUtils;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create new draft coverImage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "f"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->this$0:Lcom/narvii/scene/service/SceneDraftHelper;

    invoke-static {v2}, Lcom/narvii/scene/service/SceneDraftHelper;->access$getPhotoManager$p(Lcom/narvii/scene/service/SceneDraftHelper;)Lcom/narvii/photos/PhotoManager;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$draft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-nez v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$draft:Lcom/narvii/scene/model/SceneDraft;

    new-instance v3, Lcom/narvii/scene/model/SceneCoverImageInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/narvii/scene/model/SceneCoverImageInfo;-><init>(Ljava/lang/String;I)V

    iput-object v3, v2, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    goto :goto_0

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$draft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    iput-object v1, v2, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    .line 144
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$draft:Lcom/narvii/scene/model/SceneDraft;

    iput-object v1, v2, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    new-instance v0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1$1;-><init>(Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 146
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy file error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    new-instance v0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1$1;-><init>(Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;)V

    :goto_1
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    new-instance v1, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1$1;-><init>(Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    throw v0
.end method
