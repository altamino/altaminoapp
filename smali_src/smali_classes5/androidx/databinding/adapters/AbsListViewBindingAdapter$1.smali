.class Landroidx/databinding/adapters/AbsListViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic val$scrollListener:Landroidx/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

.field final synthetic val$scrollStateListener:Landroidx/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollListener:Landroidx/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/databinding/adapters/AbsListViewBindingAdapter$OnScroll;->onScroll(Landroid/widget/AbsListView;III)V

    .line 8
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollStateListener:Landroidx/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroidx/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 8
    :cond_0
    return-void
.end method
