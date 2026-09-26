.class public Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$UnknownTypeViewHolder;
    }
.end annotation


# instance fields
.field adapterBaseViewTypeOffsetMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

.field public dynamicalMode:Z

.field public mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

.field pieceViewTypeMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public typeCountForEachAdapter:I

.field viewBaseAdapterSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance p1, Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance p1, Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    .line 25
    .line 26
    const/16 p1, 0xf

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->typeCountForEachAdapter:I

    .line 29
    .line 30
    new-instance p1, Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->adapterBaseViewTypeOffsetMapper:Ljava/util/HashMap;

    .line 36
    const/4 p1, 0x0

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dynamicalMode:Z

    .line 39
    .line 40
    new-instance p1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;-><init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;)V

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 46
    return-void
.end method

.method private resetTypeInfo()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11
    return-void
.end method


# virtual methods
.method public addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-nez p3, :cond_1

    :cond_0
    iput-object p2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    :cond_1
    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 5
    invoke-virtual {p2, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 6
    new-instance p1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;-><init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    return-void
.end method

.method public addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    return-void
.end method

.method public addAdapterAtIndex(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    move p1, v0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-ge p1, v2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1, v2, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 36
    move-result v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    :goto_1
    if-ltz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v2, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 50
    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    return-void
.end method

.method public dispatchDataSetChange()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$3;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$3;-><init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method public dispatchLoginResult(ZLandroid/content/Intent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    return v1

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public getAdapterRealPos(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 26
    move-result v2

    .line 27
    add-int/2addr v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return v1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ge p1, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    sub-int/2addr p1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dynamicalMode:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, ", viewType="

    .line 6
    .line 7
    const-string v3, ", position="

    .line 8
    .line 9
    const-string v4, "adapter getItemViewType() >= getViewTypeCount(): "

    .line 10
    const/4 v5, -0x1

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v6

    .line 23
    .line 24
    if-eqz v6, :cond_5

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    check-cast v6, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 34
    move-result v7

    .line 35
    .line 36
    if-ge p1, v7, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    .line 44
    move-result v7

    .line 45
    .line 46
    if-lt v0, v7, :cond_0

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 85
    return v5

    .line 86
    .line 87
    :cond_0
    if-ltz v0, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->adapterBaseViewTypeOffsetMapper:Ljava/util/HashMap;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    check-cast p1, Ljava/lang/Integer;

    .line 96
    .line 97
    if-nez p1, :cond_1

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->adapterBaseViewTypeOffsetMapper:Ljava/util/HashMap;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 103
    move-result p1

    .line 104
    .line 105
    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->typeCountForEachAdapter:I

    .line 106
    mul-int/2addr p1, v1

    .line 107
    .line 108
    add-int v1, p1, v0

    .line 109
    .line 110
    iget-object v2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    .line 119
    iget-object v2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    .line 124
    iget-object v2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->adapterBaseViewTypeOffsetMapper:Ljava/util/HashMap;

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    goto :goto_1

    .line 133
    .line 134
    .line 135
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 136
    move-result p1

    .line 137
    .line 138
    add-int v1, p1, v0

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    .line 149
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    .line 154
    :cond_2
    :goto_1
    if-gez v0, :cond_3

    .line 155
    goto :goto_2

    .line 156
    :cond_3
    move v5, v1

    .line 157
    :goto_2
    return v5

    .line 158
    :cond_4
    sub-int/2addr p1, v7

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    :cond_5
    return v5

    .line 162
    .line 163
    :cond_6
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    move-result v6

    .line 172
    .line 173
    if-eqz v6, :cond_b

    .line 174
    .line 175
    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    move-result-object v6

    .line 178
    .line 179
    check-cast v6, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 183
    move-result v7

    .line 184
    .line 185
    if-ge p1, v7, :cond_a

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 189
    move-result v0

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    .line 193
    move-result v7

    .line 194
    .line 195
    if-lt v0, v7, :cond_7

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    move-result-object v4

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 211
    move-result-object v4

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 231
    .line 232
    .line 233
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 234
    return v5

    .line 235
    .line 236
    :cond_7
    if-ltz v0, :cond_8

    .line 237
    .line 238
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    .line 239
    .line 240
    add-int v2, v1, v0

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object v3

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    .line 249
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    .line 254
    :cond_8
    if-gez v0, :cond_9

    .line 255
    goto :goto_4

    .line 256
    .line 257
    :cond_9
    add-int v5, v1, v0

    .line 258
    :goto_4
    return v5

    .line 259
    :cond_a
    sub-int/2addr p1, v7

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    .line 263
    move-result v6

    .line 264
    add-int/2addr v1, v6

    .line 265
    goto :goto_3

    .line 266
    :cond_b
    return v5
.end method

.method public getSize()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return v1
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dynamicalMode:Z

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v0

    .line 40
    .line 41
    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->typeCountForEachAdapter:I

    .line 42
    .line 43
    mul-int v2, v0, v1

    .line 44
    :goto_1
    return v2

    .line 45
    .line 46
    :cond_2
    if-nez v1, :cond_3

    .line 47
    move v1, v2

    .line 48
    :cond_3
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ge p2, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    sub-int/2addr p2, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance p2, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$UnknownTypeViewHolder;

    .line 13
    .line 14
    new-instance v0, Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p0, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$UnknownTypeViewHolder;-><init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;Landroid/view/View;)V

    .line 25
    return-object p2

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onDetach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onDetach()V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onErrorRetry()V

    .line 8
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    move v3, p2

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    move-object v2, p2

    .line 19
    .line 20
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 24
    move-result p2

    .line 25
    .line 26
    if-ge v3, p2, :cond_0

    .line 27
    move-object v1, v2

    .line 28
    move-object v4, p3

    .line 29
    move-object v5, p4

    .line 30
    move-object v6, p5

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchOnItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_0
    sub-int/2addr v3, p2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v1, p0

    .line 39
    move-object v2, p1

    .line 40
    move-object v4, p3

    .line 41
    move-object v5, p4

    .line 42
    move-object v6, p5

    .line 43
    .line 44
    .line 45
    invoke-super/range {v1 .. v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    move v3, p2

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    move-object v2, p2

    .line 19
    .line 20
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 24
    move-result p2

    .line 25
    .line 26
    if-ge v3, p2, :cond_0

    .line 27
    move-object v1, v2

    .line 28
    move-object v4, p3

    .line 29
    move-object v5, p4

    .line 30
    move-object v6, p5

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_0
    sub-int/2addr v3, p2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v1, p0

    .line 39
    move-object v2, p1

    .line 40
    move-object v4, p3

    .line 41
    move-object v5, p4

    .line 42
    move-object v6, p5

    .line 43
    .line 44
    .line 45
    invoke-super/range {v1 .. v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 12
    :goto_0
    return-void
.end method

.method public refreshCellAtIndex(II)V
    .locals 3

    .line 1
    .line 2
    if-ge p2, p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method public removeAllCells()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->resetEmptyList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->resetTypeInfo()V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 18
    return-void
.end method

.method public removeCellAtIndex(II)V
    .locals 3

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-gt p2, v0, :cond_2

    .line 11
    .line 12
    if-ge p2, p1, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge p1, p2, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 19
    .line 20
    sub-int v2, p1, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->removeDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 37
    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->resetTypeInfo()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public resetEmptyList()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public resetList()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
