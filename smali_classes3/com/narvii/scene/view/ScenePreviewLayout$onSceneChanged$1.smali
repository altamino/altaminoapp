.class final Lcom/narvii/scene/view/ScenePreviewLayout$onSceneChanged$1;
.super Ljava/lang/Object;
.source "ScenePreviewLayout.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/ScenePreviewLayout;->onSceneChanged(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $sceneId:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/scene/view/ScenePreviewLayout;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/ScenePreviewLayout;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneChanged$1;->this$0:Lcom/narvii/scene/view/ScenePreviewLayout;

    iput-object p2, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneChanged$1;->$sceneId:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneChanged$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneChanged$1;->this$0:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->getOnPlayListener()Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneChanged$1;->$sceneId:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/scene/view/ScenePreviewLayout$onSceneChanged$1;->$index:I

    invoke-interface {v0, v1, v2}, Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;->onSceneChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
