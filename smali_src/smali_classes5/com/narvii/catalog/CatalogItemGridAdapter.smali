.class public abstract Lcom/narvii/catalog/CatalogItemGridAdapter;
.super Lcom/narvii/item/list/ItemGridExAdapter;
.source "SourceFile"


# instance fields
.field public canSelectOfficial:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/item/list/ItemGridExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/catalog/CatalogItemGridAdapter;->canSelectOfficial:Z

    .line 7
    .line 8
    const-string p1, "Catalog"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->detailOpenSource:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogItemGridAdapter;->keepForLeaderAndCurator()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance p2, Lcom/narvii/util/FilterHelper;

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogItemGridAdapter;->canSelectOfficial:Z

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    if-nez p2, :cond_1

    .line 31
    goto :goto_2

    .line 32
    .line 33
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/model/Item;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/narvii/model/User;->isSystem()Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :goto_2
    return-object p2
.end method

.method public keepForLeaderAndCurator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected layoutId()I
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d035a

    return v0

    :cond_0
    const v0, 0x7f0d035c

    return v0
.end method
