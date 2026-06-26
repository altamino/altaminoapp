.class public Lcom/narvii/community/FullCommunityResponse;
.super Lcom/narvii/model/api/CommunityResponse;
.source "FullCommunityResponse.java"


# instance fields
.field public currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

.field public hasPendingMembershipRequestWithCurrentUser:Z

.field public isCurrentUserJoined:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/model/api/CommunityResponse;-><init>()V

    return-void
.end method
