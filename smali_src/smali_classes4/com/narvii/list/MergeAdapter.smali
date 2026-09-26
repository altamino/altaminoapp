.class public Lcom/narvii/list/MergeAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/list/MergeAdapter$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter$1;-><init>(Lcom/narvii/list/MergeAdapter;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/list/MergeAdapter;->observer:Landroid/database/DataSetObserver;

    .line 18
    return-void
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-void
.end method

.method public addAdapter(Landroid/widget/ListAdapter;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    if-nez p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    :cond_1
    iget-object p2, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/narvii/list/MergeAdapter;->observer:Landroid/database/DataSetObserver;

    .line 3
    invoke-interface {p1, p2}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

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
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

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
    check-cast v2, Landroid/widget/ListAdapter;

    .line 27
    .line 28
    instance-of v3, v2, Lcom/narvii/list/NVAdapter;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    check-cast v2, Lcom/narvii/list/NVAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    return v1

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/MergeAdapter;->flags:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/MergeAdapter;->getTotalCount()I

    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public getCurAdapterIndex(Landroid/widget/ListAdapter;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-ne v1, p1, :cond_0

    .line 18
    return v0

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, -0x1

    .line 23
    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

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
    check-cast v1, Landroid/widget/ListAdapter;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ge p1, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

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

.method public getItemId(I)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

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
    check-cast v1, Landroid/widget/ListAdapter;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ge p1, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 28
    move-result-wide v0

    .line 29
    return-wide v0

    .line 30
    :cond_0
    sub-int/2addr p1, v2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    const-wide/16 v0, -0x1

    .line 34
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

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
    const/4 v3, -0x1

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Landroid/widget/ListAdapter;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 24
    move-result v4

    .line 25
    .line 26
    if-ge p1, v4, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 34
    move-result v4

    .line 35
    .line 36
    if-lt v0, v4, :cond_0

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v4, "adapter getItemViewType() >= getViewTypeCount(): "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, ", position="

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p1, ", viewType="

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 81
    return v3

    .line 82
    .line 83
    :cond_0
    if-gez v0, :cond_1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_1
    add-int v3, v1, v0

    .line 87
    :goto_1
    return v3

    .line 88
    :cond_2
    sub-int/2addr p1, v4

    .line 89
    .line 90
    .line 91
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 92
    move-result v2

    .line 93
    add-int/2addr v1, v2

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    return v3
.end method

.method protected getTotalCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

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
    check-cast v2, Landroid/widget/ListAdapter;

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

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
    check-cast v1, Landroid/widget/ListAdapter;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ge p1, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

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
    .line 34
    .line 35
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

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
    check-cast v2, Landroid/widget/ListAdapter;

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    if-nez v1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

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
    check-cast v1, Landroid/widget/ListAdapter;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ge p1, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    sub-int/2addr p1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public isListShown()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    xor-int/lit8 v0, v0, 0x1

    .line 24
    return v0
.end method

.method public onAttach()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroid/widget/ListAdapter;

    .line 22
    .line 23
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroid/widget/ListAdapter;

    .line 22
    .line 23
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public onErrorRetry()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    .line 12
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    move v2, p2

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Landroid/widget/ListAdapter;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-ge v2, v1, :cond_1

    .line 27
    .line 28
    instance-of p1, p2, Lcom/narvii/list/NVAdapter;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    move-object v1, p2

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 34
    move-object v0, v1

    .line 35
    move-object v3, p3

    .line 36
    move-object v4, p4

    .line 37
    move-object v5, p5

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_0
    return v0

    .line 44
    :cond_1
    sub-int/2addr v2, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v0
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

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
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Landroid/widget/ListAdapter;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-ge v3, v2, :cond_1

    .line 27
    .line 28
    instance-of v0, p2, Lcom/narvii/list/NVAdapter;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    move-object v1, p2

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 34
    move-object v2, p1

    .line 35
    move-object v4, p3

    .line 36
    move-object v5, p4

    .line 37
    move-object v6, p5

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/list/NVAdapter;->dispatchOnLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_0
    return v1

    .line 44
    :cond_1
    sub-int/2addr v3, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "count"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const-string v0, "merge adapter cannot restore instance state: count doesn\'t match"

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v1

    .line 30
    .line 31
    if-ge v0, v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Landroid/widget/ListAdapter;

    .line 40
    .line 41
    instance-of v2, v1, Lcom/narvii/list/NVAdapter;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v3, "adapter"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 72
    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    .line 12
    const-string v2, "count"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ge v1, v2, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/list/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Landroid/widget/ListAdapter;

    .line 33
    .line 34
    instance-of v3, v2, Lcom/narvii/list/NVAdapter;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    check-cast v2, Lcom/narvii/list/NVAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v4, "adapter"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_0

    .line 66
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/MergeAdapter;->mainAdapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 16
    :goto_0
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/list/MergeAdapter;->flags:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method
