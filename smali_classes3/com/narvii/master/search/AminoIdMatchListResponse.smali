.class public Lcom/narvii/master/search/AminoIdMatchListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "AminoIdMatchListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/master/search/AminoIdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public resultList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/master/search/AminoIdInfo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/master/search/AminoIdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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
            "Lcom/narvii/master/search/AminoIdInfo;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/narvii/master/search/AminoIdMatchListResponse;->resultList:Ljava/util/List;

    return-object v0
.end method
