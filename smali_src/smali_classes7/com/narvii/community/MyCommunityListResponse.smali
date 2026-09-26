.class public Lcom/narvii/community/MyCommunityListResponse;
.super Lcom/narvii/master/CommunityListResponse;
.source "SourceFile"


# instance fields
.field public showStoreBadge:Z

.field public userInfoInCommunities:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/CommunityListResponse;-><init>()V

    .line 4
    return-void
.end method
