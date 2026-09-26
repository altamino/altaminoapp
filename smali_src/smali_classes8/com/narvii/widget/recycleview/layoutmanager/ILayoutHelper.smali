.class public interface abstract Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract layoutARow(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
            "Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract layoutReverse(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V
.end method

.method public abstract recycleUnvisibleViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V
.end method

.method public abstract willCalculateUnVisibleViews()V
.end method
