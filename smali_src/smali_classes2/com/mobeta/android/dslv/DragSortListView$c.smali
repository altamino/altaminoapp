.class Lcom/mobeta/android/dslv/DragSortListView$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 8
    .line 9
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$c$a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/mobeta/android/dslv/DragSortListView$c$a;-><init>(Lcom/mobeta/android/dslv/DragSortListView$c;Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    check-cast p2, Lcom/mobeta/android/dslv/b;

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, p1, v0, v2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eq v1, v0, :cond_3

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 31
    const/4 p3, 0x0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p1, p3, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    instance-of p3, p2, Landroid/widget/Checkable;

    .line 40
    .line 41
    if-eqz p3, :cond_2

    .line 42
    .line 43
    new-instance p3, Lcom/mobeta/android/dslv/c;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-direct {p3, v0}, Lcom/mobeta/android/dslv/c;-><init>(Landroid/content/Context;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    new-instance p3, Lcom/mobeta/android/dslv/b;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-direct {p3, v0}, Lcom/mobeta/android/dslv/b;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    :goto_0
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 67
    const/4 v1, -0x1

    .line 68
    const/4 v2, -0x2

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    move-object p2, p3

    .line 79
    .line 80
    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 84
    move-result v0

    .line 85
    add-int/2addr p1, v0

    .line 86
    const/4 v0, 0x1

    .line 87
    .line 88
    .line 89
    invoke-static {p3, p1, p2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->x(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 90
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$c;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
