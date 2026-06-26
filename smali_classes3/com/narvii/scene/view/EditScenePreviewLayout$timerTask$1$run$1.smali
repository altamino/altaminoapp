.class final Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1$run$1;
.super Ljava/lang/Object;
.source "EditScenePreviewLayout.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1$run$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1$run$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;

    iget-object v0, v0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1$run$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;

    iget-object v1, v1, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;

    invoke-static {v1}, Lcom/narvii/scene/view/EditScenePreviewLayout;->access$getCurrentPosition(Lcom/narvii/scene/view/EditScenePreviewLayout;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1$run$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;

    iget-object v3, v3, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;

    invoke-static {v3}, Lcom/narvii/scene/view/EditScenePreviewLayout;->access$getTotalDuration(Lcom/narvii/scene/view/EditScenePreviewLayout;)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    :cond_0
    return-void
.end method
