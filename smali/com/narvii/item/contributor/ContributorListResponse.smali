.class public Lcom/narvii/item/contributor/ContributorListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "ContributorListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/item/contributor/Contributor;",
        ">;"
    }
.end annotation


# instance fields
.field public contributorList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/item/contributor/Contributor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/item/contributor/Contributor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
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
            "Lcom/narvii/item/contributor/Contributor;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/narvii/item/contributor/ContributorListResponse;->contributorList:Ljava/util/List;

    return-object v0
.end method
