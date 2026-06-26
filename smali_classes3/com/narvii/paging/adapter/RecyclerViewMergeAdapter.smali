.class public Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "RecyclerViewMergeAdapter.java"


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

    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    .line 26
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    const/16 p1, 0xf

    .line 27
    iput p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->typeCountForEachAdapter:I

    .line 29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->adapterBaseViewTypeOffsetMapper:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dynamicalMode:Z

    .line 104
    new-instance p1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;

    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$2;-><init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    return-void
.end method

.method private resetTypeInfo()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 344
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method public addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V
    .locals 0

    if-nez p3, :cond_0

    .line 53
    iget-object p3, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-nez p3, :cond_1

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    :cond_1
    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    .line 57
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_2
    iget-object p3, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 61
    :goto_0
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    invoke-virtual {p2, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 62
    new-instance p1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$1;-><init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 101
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    return-void
.end method

.method public addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 49
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

    if-eqz p2, :cond_2

    .line 380
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 384
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 385
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p0, v1, v2, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 388
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 389
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p0, p1, v2, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public dispatchDataSetChange()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$3;

    invoke-direct {v1, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$3;-><init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public dispatchLoginResult(ZLandroid/content/Intent;)Z
    .locals 3

    .line 425
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 429
    invoke-virtual {v2, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getAdapterRealPos(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)I
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 418
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 144
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 146
    invoke-virtual {v1, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 136
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 8

    .line 191
    iget-boolean v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dynamicalMode:Z

    const-string v1, ", viewType="

    const-string v2, ", position="

    const-string v3, "adapter getItemViewType() >= getViewTypeCount(): "

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 193
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge p1, v7, :cond_4

    .line 195
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 196
    invoke-virtual {v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v5

    :cond_0
    if-ltz v0, :cond_2

    .line 202
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->adapterBaseViewTypeOffsetMapper:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->adapterBaseViewTypeOffsetMapper:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->typeCountForEachAdapter:I

    mul-int p1, p1, v1

    add-int v4, p1, v0

    .line 206
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->adapterBaseViewTypeOffsetMapper:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int v4, p1, v0

    .line 212
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    const/4 v4, -0x1

    :cond_3
    return v4

    :cond_4
    sub-int/2addr p1, v7

    goto/16 :goto_0

    :cond_5
    return v5

    .line 224
    :cond_6
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 225
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge p1, v7, :cond_a

    .line 228
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 229
    invoke-virtual {v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    move-result v7

    if-lt v0, v7, :cond_7

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v5

    :cond_7
    if-ltz v0, :cond_8

    .line 234
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    add-int v1, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    if-gez v0, :cond_9

    goto :goto_3

    :cond_9
    add-int v5, v4, v0

    :goto_3
    return v5

    :cond_a
    sub-int/2addr p1, v7

    .line 241
    invoke-virtual {v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2

    :cond_b
    return v5
.end method

.method public getSize()I
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 289
    invoke-virtual {v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 180
    invoke-virtual {v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dynamicalMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->typeCountForEachAdapter:I

    mul-int v2, v0, v1

    :goto_1
    return v2

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 118
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 119
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 120
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 167
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 169
    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    :cond_0
    sub-int/2addr p2, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->viewBaseAdapterSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-nez v0, :cond_0

    .line 158
    new-instance p2, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$UnknownTypeViewHolder;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p0, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter$UnknownTypeViewHolder;-><init>(Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;Landroid/view/View;)V

    return-object p2

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieceViewTypeMapper:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onDetach()V

    .line 127
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 128
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onDetach()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onErrorRetry()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 305
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, p2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 306
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-ge v3, p2, :cond_0

    move-object v1, v2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 308
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchOnItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    sub-int/2addr v3, p2

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 312
    invoke-super/range {v1 .. v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 317
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, p2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 318
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-ge v3, p2, :cond_0

    move-object v1, v2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 320
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    sub-int/2addr v3, p2

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 324
    invoke-super/range {v1 .. v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    :goto_0
    return-void
.end method

.method public refreshCellAtIndex(II)V
    .locals 3

    if-ge p2, p1, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_1

    .line 368
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 369
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAllCells()V
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->resetEmptyList()V

    .line 397
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 398
    invoke-direct {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->resetTypeInfo()V

    const/4 v0, 0x0

    .line 399
    iput-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->mainAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 400
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeCellAtIndex(II)V
    .locals 3

    if-ltz p1, :cond_2

    .line 348
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_2

    if-ge p2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 353
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 354
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    add-int/lit8 v0, v0, 0x1

    .line 356
    iget-object v2, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    invoke-virtual {v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->removeDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->resetTypeInfo()V

    .line 360
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public resetEmptyList()V
    .locals 2

    .line 336
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 337
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 338
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetList()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 330
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    goto :goto_0

    :cond_0
    return-void
.end method
