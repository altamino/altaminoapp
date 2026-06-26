.class Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;
.super Ljava/lang/Object;
.source "ScenesBackgroundMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$000(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/ScenePreviewLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 138
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$000(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/ScenePreviewLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setBackToBeginningWhenStop(Z)V

    .line 139
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$000(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/ScenePreviewLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$100(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    .line 141
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$200(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$200(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-virtual {v3}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->getEditDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 142
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$400(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/EditSceneBGMLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$300(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/EditSceneBGMLayout;->init(Lcom/narvii/video/services/FrameRetrieverManager;)V

    .line 143
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$400(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/EditSceneBGMLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-static {v1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$200(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-virtual {v2}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->getEditDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setBGMusicClip(Lcom/narvii/video/model/AVClipInfoPack;J)V

    .line 144
    invoke-static {}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editSceneBGMLayout init >>> duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;->this$0:Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-virtual {v2}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->getEditDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
