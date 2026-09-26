.class public Lcom/narvii/wallet/util/Purchase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mIsAutoRenewing:Z

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/wallet/util/Purchase;->mItemType:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/wallet/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lorg/json/JSONObject;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/wallet/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    const-string p2, "orderId"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/wallet/util/Purchase;->mOrderId:Ljava/lang/String;

    .line 23
    .line 24
    const-string p2, "packageName"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    iput-object p2, p0, Lcom/narvii/wallet/util/Purchase;->mPackageName:Ljava/lang/String;

    .line 31
    .line 32
    const-string p2, "productId"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    iput-object p2, p0, Lcom/narvii/wallet/util/Purchase;->mSku:Ljava/lang/String;

    .line 39
    .line 40
    const-string p2, "purchaseTime"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 44
    move-result-wide v0

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/narvii/wallet/util/Purchase;->mPurchaseTime:J

    .line 47
    .line 48
    const-string p2, "purchaseState"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 52
    move-result p2

    .line 53
    .line 54
    iput p2, p0, Lcom/narvii/wallet/util/Purchase;->mPurchaseState:I

    .line 55
    .line 56
    const-string p2, "developerPayload"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    iput-object p2, p0, Lcom/narvii/wallet/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 63
    .line 64
    const-string p2, "purchaseToken"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    const-string/jumbo v0, "token"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    iput-object p2, p0, Lcom/narvii/wallet/util/Purchase;->mToken:Ljava/lang/String;

    .line 78
    .line 79
    const-string p2, "autoRenewing"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 83
    move-result p1

    .line 84
    .line 85
    iput-boolean p1, p0, Lcom/narvii/wallet/util/Purchase;->mIsAutoRenewing:Z

    .line 86
    .line 87
    iput-object p3, p0, Lcom/narvii/wallet/util/Purchase;->mSignature:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/util/Purchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/util/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/util/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/util/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    iget v0, p0, Lcom/narvii/wallet/util/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/wallet/util/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/util/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/util/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/util/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRenewing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/wallet/util/Purchase;->mIsAutoRenewing:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "PurchaseInfo(type:"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/wallet/util/Purchase;->mItemType:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "):"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/wallet/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
