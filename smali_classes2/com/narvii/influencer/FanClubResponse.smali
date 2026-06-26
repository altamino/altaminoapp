.class public Lcom/narvii/influencer/FanClubResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "FanClubResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/influencer/FanClub;",
        ">;"
    }
.end annotation


# instance fields
.field public fanClub:Lcom/narvii/influencer/FanClub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/influencer/FanClub;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/influencer/FanClubResponse;->fanClub:Lcom/narvii/influencer/FanClub;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/narvii/influencer/FanClubResponse;->object()Lcom/narvii/influencer/FanClub;

    move-result-object v0

    return-object v0
.end method
