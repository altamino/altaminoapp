.class final Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 9

    .line 1000
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1001
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1003
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v3, v3, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v3, v3, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$videoClipList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 1004
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$audioClipList:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClipList(Ljava/util/List;)V

    .line 1005
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$captionList:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    .line 1006
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$stickerList:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    .line 1007
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->$pipList:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    .line 1008
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v2, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo$default(Lcom/narvii/video/ScrollingTimeLineFragment;ZIILjava/lang/Object;)V

    .line 1009
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getScene$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    :cond_1
    const-string p1, ".mp4"

    if-nez v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/video/SceneEditorFragment;->access$getOutputFolder$p(Lcom/narvii/video/SceneEditorFragment;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v4, v4, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v4, v4, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v4}, Lcom/narvii/video/SceneEditorFragment;->access$getPhotoManager$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/photos/PhotoManager;

    move-result-object v4

    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v5, v5, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v5, v5, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v5}, Lcom/narvii/video/SceneEditorFragment;->access$getOutputFolder$p(Lcom/narvii/video/SceneEditorFragment;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/photos/PhotoManager;->getNewVideoName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/SceneEditorFragment;->access$setOutputPath$p(Lcom/narvii/video/SceneEditorFragment;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/SceneEditorFragment;->access$getScene$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v1, v1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v1, v1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v1}, Lcom/narvii/video/SceneEditorFragment;->access$getOutputPath$p(Lcom/narvii/video/SceneEditorFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    .line 1013
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v1, v1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v1, v1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v1}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "preview_only_folder"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1015
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "coverImage_only_folder"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1017
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v2, v2, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preview_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v5, v5, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v5, v5, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v5}, Lcom/narvii/video/SceneEditorFragment;->access$getScene$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v5

    const-string v6, "default"

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v6

    .line 1018
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1017
    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/narvii/video/SceneEditorFragment;->access$setOutputPreviewVideoPath$p(Lcom/narvii/video/SceneEditorFragment;Ljava/lang/String;)V

    .line 1019
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coverImage_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v3, v3, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v3, v3, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v3}, Lcom/narvii/video/SceneEditorFragment;->access$getScene$p(Lcom/narvii/video/SceneEditorFragment;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v6

    .line 1020
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1019
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$setOutputCoverImagePath$p(Lcom/narvii/video/SceneEditorFragment;Ljava/lang/String;)V

    .line 1021
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$initOperations(Lcom/narvii/video/SceneEditorFragment;)V

    .line 1022
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$checkSceneDuration(Lcom/narvii/video/SceneEditorFragment;)V

    .line 1023
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getAddClipButton$p(Lcom/narvii/video/SceneEditorFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$updateAddClipButtonVisibility(Lcom/narvii/video/SceneEditorFragment;)V

    .line 1025
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_fast_switching_panel:I

    invoke-virtual {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ClipFastSwitchingPanel;

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/video/widget/ClipFastSwitchingPanel;->setEventCallback(Lcom/narvii/video/widget/ClipFastSwitchingPanel$ClipFastSwitchingEventCallback;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment$onAVClipsPrepared$1$1$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
