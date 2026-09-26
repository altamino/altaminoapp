.class public final Lcom/narvii/scene/BaseSceneListFragment$showTip$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 9
    .line 10
    if-lez p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/scene/BaseSceneListFragment;->access$getToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/util/ToolTipHelper;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/scene/BaseSceneListFragment;->access$getToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/util/ToolTipHelper;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->isTooltipShowing()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/scene/BaseSceneListFragment;->access$getToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/util/ToolTipHelper;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 46
    :cond_0
    return-void
.end method
