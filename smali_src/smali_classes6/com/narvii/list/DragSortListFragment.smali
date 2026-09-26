.class public abstract Lcom/narvii/list/DragSortListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$j;
.implements Lcom/mobeta/android/dslv/DragSortListView$n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/narvii/list/NVListFragment;",
        "Lcom/mobeta/android/dslv/DragSortListView$j;",
        "Lcom/mobeta/android/dslv/DragSortListView$n;"
    }
.end annotation


# instance fields
.field private mController:Lcom/mobeta/android/dslv/a;

.field private mDslv:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/list/DragSortListFragment;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    return-object p0
.end method


# virtual methods
.method protected advanceSortListView(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    return-void
.end method

.method protected buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/a;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/narvii/list/DragSortListFragment$1;

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DragSortListFragment$1;-><init>(Lcom/narvii/list/DragSortListFragment;Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 12
    .line 13
    sget p1, Lcom/narvii/lib/R$id;->drag_handle:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/a;->setDragHandleId(I)V

    .line 17
    .line 18
    sget p1, Lcom/narvii/lib/R$id;->click_remove:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/a;->setClickRemoveId(I)V

    .line 22
    const/4 p1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/a;->setRemoveEnabled(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/DragSortListFragment;->isDragSortable()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/a;->setSortEnabled(Z)V

    .line 33
    const/4 p1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/a;->setDragInitMode(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/a;->setRemoveMode(I)V

    .line 40
    .line 41
    const/high16 p1, 0x40000000    # 2.0f

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, p1}, Lcom/mobeta/android/dslv/e;->setBackgroundColor(I)V

    .line 45
    return-object v6
.end method

.method public confirmBeforeRemove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
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

    .line 1
    .line 2
    if-eq p1, p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/NVArrayAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->remove(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p2}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 19
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

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->drag_sort_list_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/list/DragSortListFragment;->buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/a;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mController:Lcom/mobeta/android/dslv/a;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$k;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/list/DragSortListFragment;->mController:Lcom/mobeta/android/dslv/a;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/list/DragSortListFragment;->isDragSortable()Z

    .line 48
    move-result p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$j;)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$n;)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/list/DragSortListFragment;->advanceSortListView(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 67
    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/list/NVArrayAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->remove(I)V

    .line 10
    return-void
.end method

.method public removeItemAtPosition(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/DragSortListFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->c0(I)V

    .line 8
    :cond_0
    return-void
.end method
