.class public abstract Lcom/narvii/feed/FeedListAdapter;
.super Lcom/narvii/feed/BaseFeedListAdapter;
.source "FeedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/feed/BaseFeedListAdapter<",
        "Lcom/narvii/model/Feed;",
        "Lcom/narvii/model/api/ListResponse<",
        "+",
        "Lcom/narvii/model/Feed;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    return-object v0
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 17
    const-class v0, Lcom/narvii/model/Feed;

    return-object v0
.end method
