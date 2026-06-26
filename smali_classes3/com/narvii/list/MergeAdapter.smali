.class public Lcom/narvii/list/MergeAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MergeAdapter.java"


# static fields
.field public static final FLAG_FORCE_EMPTY_OR_ERROR:I = 0x1


# instance fields
.field private flags:I

.field private mainAdapter:Landroid/widget/ListAdapter;

.field private final observer:Landroid/database/DataSetObserver;

.field private final pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 37
    new-instance p1, Lcom/narvii/list/MergeAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter$1;-><init>(Lcom/narvii/list/MergeAdapter;)V

    iput-object p1, p0, Lcom/narvii/list/MergeAdapter;->observer:Landroid/database/DataSetObserver;

    return-void
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-void
.end method

.method public addAdapter(Landroid/widget/ListAdapter;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 168
    iget-object p2, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    if-nez p2, :cond_1

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    .line 171
    :cond_1
    iget-object p2, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object p2, p0, Lcom/narvii/list/MergeAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 173
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method dispatchLoginResult(ZLandroid/content/Intent;)Z
    .locals 4

    .line 341
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 345
    instance-of v3, v2, Lcom/narvii/list/NVAdapter;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/narvii/list/MergeAdapter;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_1

    .line 194
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 195
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/MergeAdapter;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public getCurAdapterIndex(Landroid/widget/ListAdapter;)I
    .locals 2

    const/4 v0, 0x0

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 179
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 182
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 285
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 288
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 228
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 231
    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 232
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapter getItemViewType() >= getViewTypeCount(): "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", viewType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v3

    :cond_0
    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int v3, v1, v0

    :goto_1
    return v3

    :cond_2
    sub-int/2addr p1, v4

    .line 240
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method protected getTotalCount()I
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 209
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 269
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 273
    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 279
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 218
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 254
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 257
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_0
    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isListShown()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_1

    .line 128
    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    return v0

    .line 130
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onAttach()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 96
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 97
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    if-eqz v2, :cond_0

    .line 98
    check-cast v1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->onAttach()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 105
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 107
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 108
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    if-eqz v2, :cond_0

    .line 109
    check-cast v1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->onDetach()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onErrorRetry()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 300
    iget-object p1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ListAdapter;

    .line 301
    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 304
    instance-of p1, p2, Lcom/narvii/list/NVAdapter;

    if-eqz p1, :cond_0

    .line 305
    move-object v1, p2

    check-cast v1, Lcom/narvii/list/NVAdapter;

    move-object v0, v1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 306
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    return v0

    :cond_1
    sub-int/2addr v2, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 321
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, p2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ListAdapter;

    .line 322
    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 325
    instance-of v0, p2, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 326
    move-object v1, p2

    check-cast v1, Lcom/narvii/list/NVAdapter;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 327
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    return v1

    :cond_1
    sub-int/2addr v3, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "count"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "merge adapter cannot restore instance state: count doesn\'t match"

    .line 64
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 69
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    if-eqz v2, :cond_1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 72
    check-cast v1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v1, v2}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 5

    .line 80
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 84
    instance-of v3, v2, Lcom/narvii/list/NVAdapter;

    if-eqz v3, :cond_0

    .line 85
    check-cast v2, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :goto_0
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/narvii/list/MergeAdapter;->flags:I

    .line 55
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
