.class public final Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/scene/BaseSceneListFragment;->saveDraft(Z)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraftInterval()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraftInterval()I

    .line 28
    move-result v0

    .line 29
    int-to-long v0, v0

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 33
    :cond_0
    return-void
.end method
