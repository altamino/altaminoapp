.class public Lcom/narvii/master/invitation/CommunityMemRequestResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "CommunityMemRequestResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/CommunityMemRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public communityMembershipRequest:Lcom/narvii/model/CommunityMemRequest;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/CommunityMemRequest;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/model/CommunityMemRequest;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/master/invitation/CommunityMemRequestResponse;->communityMembershipRequest:Lcom/narvii/model/CommunityMemRequest;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/narvii/master/invitation/CommunityMemRequestResponse;->object()Lcom/narvii/model/CommunityMemRequest;

    move-result-object v0

    return-object v0
.end method
