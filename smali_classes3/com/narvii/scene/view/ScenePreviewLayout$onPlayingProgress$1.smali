.class final Lcom/narvii/scene/view/ScenePreviewLayout$onPlayingProgress$1;
.super Ljava/lang/Object;
.source "ScenePreviewLayout.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/ScenePreviewLayout;->onPlayingProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $progress:J

.field final synthetic $total:J

.field final synthetic this$0:Lcom/narvii/scene/view/ScenePreviewLayout;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/ScenePreviewLayout;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onPlayingProgress$1;->this$0:Lcom/narvii/scene/view/ScenePreviewLayout;

    iput-wide p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onPlayingProgress$1;->$progress:J

    iput-wide p4, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onPlayingProgress$1;->$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onPlayingProgress$1;->this$0:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onPlayingProgress$1;->$progress:J

    iget-wide v3, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onPlayingProgress$1;->$total:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onPlayingProgress(JJ)V

    :cond_0
    return-void
.end method
