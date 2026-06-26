.class public Lcom/narvii/influencer/FansInfoListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "FansInfoListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/influencer/FansInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public fanClubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FansInfo;",
            ">;"
        }
    .end annotation
.end field

.field public influencerUserProfile:Lcom/narvii/model/User;

.field public myFanClub:Lcom/narvii/influencer/FansInfo;


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
            "Lcom/narvii/influencer/FansInfo;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/narvii/influencer/FansInfoListResponse;->fanClubList:Ljava/util/List;

    return-object v0
.end method
