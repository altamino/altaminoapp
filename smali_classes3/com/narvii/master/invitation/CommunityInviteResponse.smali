.class public Lcom/narvii/master/invitation/CommunityInviteResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "CommunityInviteResponse.java"


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
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Community;
    .end annotation
.end field

.field public invitation:Lcom/narvii/master/invitation/Invitation;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/master/invitation/Invitation;
    .end annotation
.end field

.field public invitationId:Ljava/lang/String;

.field public isCurrentUserJoined:Z

.field public isMembershipRequestedByCurrentUser:Z

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/model/Community;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/narvii/master/invitation/CommunityInviteResponse;->object()Lcom/narvii/model/Community;

    move-result-object v0

    return-object v0
.end method
