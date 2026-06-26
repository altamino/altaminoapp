.class public Lcom/narvii/community/search/CommunitySearchKeyPrediction;
.super Lcom/narvii/model/NVObject;
.source "CommunitySearchKeyPrediction.java"

# interfaces
.implements Lcom/narvii/model/StrategyObject;


# instance fields
.field public fakeStatus:I

.field public name:Ljava/lang/String;

.field public strategyInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/community/search/CommunitySearchKeyPrediction;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x385

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/community/search/CommunitySearchKeyPrediction;->strategyInfo:Ljava/lang/String;

    return-void
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
