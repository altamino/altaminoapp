.class public Lcom/narvii/paging/storage/ListPageStorage;
.super Lcom/narvii/paging/storage/PageStorage;
.source "ListPageStorage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/paging/storage/PageStorage<",
        "TT;>;"
    }
.end annotation


# instance fields
.field pageData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/narvii/paging/storage/PageStorage;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    return-void
.end method

.method private mergeTop(Ljava/util/ArrayList;Ljava/util/List;[Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;[Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 129
    aput-boolean v2, p3, v1

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 133
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    aput-boolean v2, p3, v1

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 138
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 139
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 140
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/NVObject;

    const/4 v4, 0x0

    .line 141
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 142
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/NVObject;

    .line 143
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v4

    add-int/2addr v1, v0

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v4, v2

    .line 148
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v4, p2, :cond_3

    .line 149
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object p3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
    :cond_5
    aput-boolean v2, p3, v1

    .line 156
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p3

    .line 161
    :cond_6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    const/4 v3, 0x0

    .line 162
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 163
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/NVObject;

    .line 164
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v3, :cond_7

    return-object p1

    .line 168
    :cond_7
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, v3, :cond_8

    .line 170
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 172
    :cond_8
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 176
    :cond_a
    aput-boolean v2, p3, v1

    .line 178
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p3
.end method


# virtual methods
.method public appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 60
    iget-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    :cond_1
    if-eqz p2, :cond_2

    .line 64
    invoke-interface {p2}, Lcom/narvii/paging/storage/PageOperationCallback;->onEmptyPageAppended()V

    :cond_2
    return-void

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_5

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/narvii/paging/storage/PageOperationCallback;->onPageAppended(I)V

    :cond_5
    return-void
.end method

.method public get(I)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/paging/storage/ListPageStorage;->get(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 240
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/NVObject;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/model/RefHost;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/RefHost;

    invoke-interface {v2}, Lcom/narvii/model/RefHost;->refId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    return-object p1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getPosition(Lcom/narvii/model/NVObject;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 252
    :goto_0
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/NVObject;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_2

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/narvii/paging/storage/PageOperationCallback;->onInitialized(I)V

    :cond_2
    return-void
.end method

.method public prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;Z",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 83
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    :cond_1
    if-eqz p3, :cond_2

    .line 88
    invoke-interface {p3}, Lcom/narvii/paging/storage/PageOperationCallback;->onEmptyPagePrepend()V

    :cond_2
    return v0

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Z

    .line 93
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    :cond_4
    if-eqz p2, :cond_6

    .line 97
    iget-object p2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1, v1}, Lcom/narvii/paging/storage/ListPageStorage;->mergeTop(Ljava/util/ArrayList;Ljava/util/List;[Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 99
    iput-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-eqz p3, :cond_7

    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p2

    if-nez v2, :cond_5

    .line 102
    invoke-interface {p3}, Lcom/narvii/paging/storage/PageOperationCallback;->onEmptyPagePrepend()V

    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-interface {p3, p1}, Lcom/narvii/paging/storage/PageOperationCallback;->onPagePrepend(I)V

    goto :goto_0

    .line 108
    :cond_6
    iget-object p2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    if-eqz p3, :cond_7

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/narvii/paging/storage/PageOperationCallback;->onPagePrepend(I)V

    .line 113
    :cond_7
    :goto_0
    aget-boolean p1, v1, v0

    return p1
.end method

.method public remove(I)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/paging/storage/ListPageStorage;->remove(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public removeItem(Lcom/narvii/model/NVObject;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    return v0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return p1
.end method

.method public resetPageData()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public updateItem(Lcom/narvii/model/NVObject;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return v0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    const/4 v2, 0x0

    .line 197
    instance-of v3, v0, Lcom/narvii/model/StrategyObject;

    if-eqz v3, :cond_2

    instance-of v3, p1, Lcom/narvii/model/StrategyObject;

    if-eqz v3, :cond_2

    .line 198
    check-cast v0, Lcom/narvii/model/StrategyObject;

    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 201
    :try_start_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v3

    .line 202
    move-object v4, v3

    check-cast v4, Lcom/narvii/model/StrategyObject;

    invoke-interface {v4, v0}, Lcom/narvii/model/StrategyObject;->setStrategyInfo(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "replace object"

    .line 206
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 211
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v0
.end method
