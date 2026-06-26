.class final Lcom/narvii/scene/BaseSceneListFragment$showTip$1;
.super Ljava/lang/Object;
.source "BaseSceneListFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;->showTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v0}, Lcom/narvii/scene/BaseSceneListFragment;->access$getSceneRecyclerView$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/scene/view/SceneRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v1

    .line 696
    invoke-virtual {v1, v0}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 697
    sget v1, Lcom/narvii/mediaeditor/R$string;->tap_to_add_videos:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v1}, Lcom/narvii/scene/BaseSceneListFragment;->access$getToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/util/ToolTipHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    :cond_0
    return-void
.end method
