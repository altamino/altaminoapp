.class public abstract Lcom/narvii/catalog/CatalogItemGridAdapter;
.super Lcom/narvii/item/list/ItemGridExAdapter;
.source "CatalogItemGridAdapter.java"


# instance fields
.field public canSelectOfficial:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/item/list/ItemGridExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/narvii/catalog/CatalogItemGridAdapter;->canSelectOfficial:Z

    const-string p1, "Catalog"

    .line 18
    iput-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->detailOpenSource:Ljava/lang/String;

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

    .line 38
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogItemGridAdapter;->keepForLeaderAndCurator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    .line 44
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogItemGridAdapter;->canSelectOfficial:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_2

    .line 47
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    .line 49
    iget-object v1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->isSystem()Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

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

    .line 25
    iget-boolean v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b0328

    return v0

    :cond_0
    const v0, 0x7f0b032a

    return v0
.end method
