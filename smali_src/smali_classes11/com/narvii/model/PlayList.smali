.class public Lcom/narvii/model/PlayList;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 7
    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/model/PlayList;
    .locals 3

    .line 2
    new-instance v0, Lcom/narvii/model/PlayList;

    invoke-direct {v0}, Lcom/narvii/model/PlayList;-><init>()V

    iget-object v1, p0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    :goto_0
    iget v1, p0, Lcom/narvii/model/PlayList;->currentItemIndex:I

    iput v1, v0, Lcom/narvii/model/PlayList;->currentItemIndex:I

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

    .line 1
    invoke-virtual {p0}, Lcom/narvii/model/PlayList;->clone()Lcom/narvii/model/PlayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayItem()Lcom/narvii/model/PlayListItem;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/PlayListItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object v0

    .line 12
    :catch_0
    const/4 v0, 0x0

    .line 13
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_0
    return-object v0
.end method
