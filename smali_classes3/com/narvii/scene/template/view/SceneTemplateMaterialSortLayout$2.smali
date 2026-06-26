.class final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;
.super Ljava/lang/Object;
.source "SceneTemplateMaterialSortLayout.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getScrollOffset$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getScrollOffset$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v2

    invoke-static {v1, v2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$setScrollOffset$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;I)V

    .line 61
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v1

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getBackgroundRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$2;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    return-void
.end method
