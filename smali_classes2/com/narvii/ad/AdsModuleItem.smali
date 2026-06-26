.class public Lcom/narvii/ad/AdsModuleItem;
.super Lcom/narvii/model/NVObject;
.source "AdsModuleItem.java"

# interfaces
.implements Lcom/narvii/model/StrategyObject;


# instance fields
.field public _uuid:Ljava/lang/String;

.field public adCampaignId:I

.field public deepLink:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public strategyInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/ad/AdsModuleItem;->_uuid:Ljava/lang/String;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/narvii/ad/AdsModuleItem;->adCampaignId:I

    return-void
.end method


# virtual methods
.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/ad/AdsModuleItem;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 2

    .line 27
    iget v0, p0, Lcom/narvii/ad/AdsModuleItem;->adCampaignId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/narvii/ad/AdsModuleItem;->_uuid:Ljava/lang/String;

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/narvii/ad/AdsModuleItem;->adCampaignId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/narvii/ad/AdsModuleItem;->adCampaignId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setStrategyInfo(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/ad/AdsModuleItem;->strategyInfo:Ljava/lang/String;

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
