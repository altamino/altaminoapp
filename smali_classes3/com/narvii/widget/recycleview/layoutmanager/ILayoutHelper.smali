.class public interface abstract Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;
.super Ljava/lang/Object;
.source "ILayoutHelper.java"


# virtual methods
.method public abstract layoutARow(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$Recycler;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract layoutReverse(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V
.end method

.method public abstract recycleUnvisibleViews(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V
.end method

.method public abstract willCalculateUnVisibleViews()V
.end method
