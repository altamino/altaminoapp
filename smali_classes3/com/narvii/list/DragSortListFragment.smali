.class public abstract Lcom/narvii/list/DragSortListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "DragSortListFragment.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;
.implements Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/narvii/list/NVListFragment;",
        "Lcom/mobeta/android/dslv/DragSortListView$DropListener;",
        "Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;"
    }
.end annotation


# instance fields
.field private mController:Lcom/mobeta/android/dslv/DragSortController;

.field private mDslv:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/list/DragSortListFragment;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    return-object p0
.end method


# virtual methods
.method protected advanceSortListView(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    return-void
.end method

.method protected buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortController;
    .locals 7

    .line 66
    new-instance v6, Lcom/narvii/list/DragSortListFragment$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DragSortListFragment$1;-><init>(Lcom/narvii/list/DragSortListFragment;Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 89
    sget p1, Lcom/narvii/lib/R$id;->drag_handle:I

    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/DragSortController;->setDragHandleId(I)V

    .line 90
    sget p1, Lcom/narvii/lib/R$id;->click_remove:I

    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/DragSortController;->setClickRemoveId(I)V

    const/4 p1, 0x1

    .line 91
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/narvii/list/DragSortListFragment;->isDragSortable()Z

    move-result p1

    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/DragSortController;->setDragInitMode(I)V

    .line 94
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveMode(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 95
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->setBackgroundColor(I)V

    return-object v6
.end method

.method public confirmBeforeRemove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/list/DragSortListFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/narvii/list/NVArrayAdapter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public drop(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/NVArrayAdapter;

    .line 106
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 107
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->remove(I)V

    .line 108
    invoke-virtual {v0, v1, p2}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public isDragSortable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 25
    sget p3, Lcom/narvii/lib/R$layout;->drag_sort_list_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 34
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p2, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, p1}, Lcom/narvii/list/DragSortListFragment;->buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortController;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mController:Lcom/mobeta/android/dslv/DragSortController;

    .line 39
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object p2, p0, Lcom/narvii/list/DragSortListFragment;->mController:Lcom/mobeta/android/dslv/DragSortController;

    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 40
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object p2, p0, Lcom/narvii/list/DragSortListFragment;->mController:Lcom/mobeta/android/dslv/DragSortController;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0}, Lcom/narvii/list/DragSortListFragment;->isDragSortable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 42
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 44
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, p1}, Lcom/narvii/list/DragSortListFragment;->advanceSortListView(Lcom/mobeta/android/dslv/DragSortListView;)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/NVArrayAdapter;

    .line 115
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->remove(I)V

    return-void
.end method

.method public removeItemAtPosition(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(I)V

    :cond_0
    return-void
.end method
