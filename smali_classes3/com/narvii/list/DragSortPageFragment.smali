.class public abstract Lcom/narvii/list/DragSortPageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "DragSortPageFragment.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;
.implements Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
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

    .line 23
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/list/DragSortPageFragment;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    return-object p0
.end method


# virtual methods
.method protected buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortController;
    .locals 2

    .line 67
    new-instance v0, Lcom/narvii/list/DragSortPageFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/list/DragSortPageFragment$1;-><init>(Lcom/narvii/list/DragSortPageFragment;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 90
    sget p1, Lcom/narvii/lib/R$id;->drag_handle:I

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortController;->setDragHandleId(I)V

    .line 91
    sget p1, Lcom/narvii/lib/R$id;->click_remove:I

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortController;->setClickRemoveId(I)V

    const/4 p1, 0x1

    .line 92
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/narvii/list/DragSortPageFragment;->isDragSortable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortController;->setDragInitMode(I)V

    const/4 p1, 0x0

    .line 95
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveMode(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 96
    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->setBackgroundColor(I)V

    return-object v0
.end method

.method public confirmBeforeRemove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/narvii/list/DragSortPageFragment;->createMainAdapter()Lcom/narvii/list/NVPagedAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
.end method

.method public drop(II)V
    .locals 3

    if-eq p1, p2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/narvii/list/DragSortPageFragment;->createMainAdapter()Lcom/narvii/list/NVPagedAdapter;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    .line 113
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    .line 114
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le p2, v2, :cond_0

    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    .line 118
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 119
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

    .line 32
    sget p3, Lcom/narvii/lib/R$layout;->drag_sort_pager_list_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 41
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p2, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, p1}, Lcom/narvii/list/DragSortPageFragment;->buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortController;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mController:Lcom/mobeta/android/dslv/DragSortController;

    .line 46
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object p2, p0, Lcom/narvii/list/DragSortPageFragment;->mController:Lcom/mobeta/android/dslv/DragSortController;

    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 47
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object p2, p0, Lcom/narvii/list/DragSortPageFragment;->mController:Lcom/mobeta/android/dslv/DragSortController;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/list/NVPagedAdapter;

    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->autoLoadNextPage()Z

    move-result p1

    .line 52
    :cond_1
    iget-object p2, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setCancelOnDataChanged(Z)V

    .line 53
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0}, Lcom/narvii/list/DragSortPageFragment;->isDragSortable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 54
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 55
    iget-object p1, p0, Lcom/narvii/list/DragSortPageFragment;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    return-void
.end method

.method public remove(I)V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/NVPagedAdapter;

    .line 126
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
