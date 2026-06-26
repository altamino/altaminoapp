.class public final Lcom/narvii/scene/BaseSceneListFragment$showTip$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseSceneListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;->showTip()V
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

    .line 702
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    if-lez p2, :cond_2

    .line 706
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {p1}, Lcom/narvii/scene/BaseSceneListFragment;->access$getToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/util/ToolTipHelper;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {p1}, Lcom/narvii/scene/BaseSceneListFragment;->access$getToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/util/ToolTipHelper;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 707
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {p1}, Lcom/narvii/scene/BaseSceneListFragment;->access$getToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/util/ToolTipHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    .line 706
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method
