.class public Lcom/narvii/community/search/SearchCommunityListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SearchCommunityListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# instance fields
.field public allItemCount:I

.field public communityList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Community;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public communitySource:Ljava/lang/String;

.field public endpointMatchedCommunity:Lcom/narvii/model/Community;

.field public invitationId:Ljava/lang/String;

.field public userInfoInJoinedCommunities:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/community/CommunityUserInfo;
        keyAs = Ljava/lang/Integer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/community/CommunityUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public userJoinedCommunityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
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
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/narvii/community/search/SearchCommunityListResponse;->communityList:Ljava/util/List;

    return-object v0
.end method
