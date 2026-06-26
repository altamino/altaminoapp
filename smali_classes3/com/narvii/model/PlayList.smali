.class public Lcom/narvii/model/PlayList;
.super Ljava/lang/Object;
.source "PlayList.java"


# instance fields
.field public currentItemIndex:I

.field public currentItemStatus:I

.field public items:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/PlayListItem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/narvii/model/PlayList;->currentItemIndex:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/model/PlayList;
    .locals 3

    .line 21
    new-instance v0, Lcom/narvii/model/PlayList;

    invoke-direct {v0}, Lcom/narvii/model/PlayList;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 27
    :goto_0
    iget v1, p0, Lcom/narvii/model/PlayList;->currentItemIndex:I

    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 28
    iget v1, p0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemStatus:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/narvii/model/PlayList;->clone()Lcom/narvii/model/PlayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayItem()Lcom/narvii/model/PlayListItem;
    .locals 2

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    iget v1, p0, Lcom/narvii/model/PlayList;->currentItemIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PlayListItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public itemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method
