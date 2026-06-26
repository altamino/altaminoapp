.class final Lcom/narvii/scene/view/ScenePreviewLayout$setSceneDraft$1;
.super Ljava/lang/Object;
.source "ScenePreviewLayout.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/view/ScenePreviewLayout;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/ScenePreviewLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/ScenePreviewLayout$setSceneDraft$1;->this$0:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/scene/view/ScenePreviewLayout$setSceneDraft$1;->this$0:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-static {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->access$getScenePlayer$p(Lcom/narvii/scene/view/ScenePreviewLayout;)Lcom/narvii/scene/interfaces/IScenePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/scene/interfaces/IScenePlayer;->play()V

    return-void
.end method
