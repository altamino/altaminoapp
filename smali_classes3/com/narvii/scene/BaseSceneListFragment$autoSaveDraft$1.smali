.class public final Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;
.super Ljava/lang/Object;
.source "BaseSceneListFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 979
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/scene/BaseSceneListFragment;->saveDraft(Z)V

    .line 983
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraftInterval()I

    move-result v0

    if-lez v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraftInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
