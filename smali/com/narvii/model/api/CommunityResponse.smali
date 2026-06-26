.class public Lcom/narvii/model/api/CommunityResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "CommunityResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# instance fields
.field public community:Lcom/narvii/model/Community;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/model/Community;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/narvii/model/api/CommunityResponse;->object()Lcom/narvii/model/Community;

    move-result-object v0

    return-object v0
.end method
