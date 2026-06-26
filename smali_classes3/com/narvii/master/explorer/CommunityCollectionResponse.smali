.class public Lcom/narvii/master/explorer/CommunityCollectionResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "CommunityCollectionResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/master/explorer/CommunityCollection;",
        ">;"
    }
.end annotation


# instance fields
.field communityCollection:Lcom/narvii/master/explorer/CommunityCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/master/explorer/CommunityCollection;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityCollectionResponse;->communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityCollectionResponse;->object()Lcom/narvii/master/explorer/CommunityCollection;

    move-result-object v0

    return-object v0
.end method
