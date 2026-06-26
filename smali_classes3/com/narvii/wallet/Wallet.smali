.class public Lcom/narvii/wallet/Wallet;
.super Lcom/narvii/model/NVObject;
.source "Wallet.java"


# instance fields
.field public adsEnabled:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

.field public businessCoinsEnabled:Z

.field public newUserCoupon:Lcom/narvii/wallet/CouponDetail;

.field public totalBusinessCoins:I

.field public totalBusinessCoinsFloat:D

.field public totalCoins:I

.field public totalCoinsFloat:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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
