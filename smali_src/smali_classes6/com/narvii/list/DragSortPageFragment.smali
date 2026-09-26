.class public abstract Lcom/narvii/list/DragSortPageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$j;
.implements Lcom/mobeta/android/dslv/DragSortListView$n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
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

.method static bridge synthetic t(Lcom/narvii/list/DragSortPageFragment;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    return-object p0
.end method


# virtual methods
.method protected buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/DragSortPageFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/list/DragSortPageFragment$1;-><init>(Lcom/narvii/list/DragSortPageFragment;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 6
    .line 7
    sget p1, Lcom/narvii/lib/R$id;->drag_handle:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/a;->setDragHandleId(I)V

    .line 11
    .line 12
    sget p1, Lcom/narvii/lib/R$id;->click_remove:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/a;->setClickRemoveId(I)V

    .line 16
    const/4 p1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/a;->setRemoveEnabled(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/DragSortPageFragment;->isDragSortable()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/a;->setSortEnabled(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/a;->setDragInitMode(I)V

    .line 30
    const/4 p1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/a;->setRemoveMode(I)V

    .line 34
    .line 35
    const/high16 p1, 0x40000000    # 2.0f

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/e;->setBackgroundColor(I)V

    .line 39
    return-object v0
.end method

.method public confirmBeforeRemove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/DragSortPageFragment;->createMainAdapter()Lcom/narvii/list/NVPagedAdapter;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected abstract createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
.end method

.method public drop(II)V
    .locals 3

    .line 1
    .line 2
    if-eq p1, p2, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/DragSortPageFragment;->createMainAdapter()Lcom/narvii/list/NVPagedAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    move-result v2

    .line 24
    .line 25
    if-le p2, v2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    move-result p2

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 40
    :cond_1
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
    sget p3, Lcom/narvii/lib/R$layout;->drag_sort_pager_list_layout:I

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
    iput-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

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
    iget-object p2, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/list/DragSortPageFragment;->buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/a;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mController:Lcom/mobeta/android/dslv/a;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$k;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/list/DragSortPageFragment;->mController:Lcom/mobeta/android/dslv/a;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    instance-of p1, p1, Lcom/narvii/list/NVPagedAdapter;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/list/NVPagedAdapter;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->autoLoadNextPage()Z

    .line 60
    move-result p1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    .line 64
    :goto_0
    iget-object p2, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 65
    .line 66
    xor-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setCancelOnDataChanged(Z)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/list/DragSortPageFragment;->isDragSortable()Z

    .line 75
    move-result p2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$j;)V

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$n;)V

    .line 89
    return-void
.end method

.method public remove(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/list/NVPagedAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method
