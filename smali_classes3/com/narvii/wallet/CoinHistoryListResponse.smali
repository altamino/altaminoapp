.class public Lcom/narvii/wallet/CoinHistoryListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "CoinHistoryListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/wallet/CoinHistory;",
        ">;"
    }
.end annotation


# instance fields
.field public coinHistoryList:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/wallet/CoinHistory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/CoinHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/wallet/CoinHistory;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistoryListResponse;->coinHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method
