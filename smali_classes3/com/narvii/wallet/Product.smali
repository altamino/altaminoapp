.class public Lcom/narvii/wallet/Product;
.super Lcom/narvii/model/NVObject;
.source "Product.java"

# interfaces
.implements Lcom/narvii/model/IBaseProduct;


# instance fields
.field public badge:Ljava/lang/String;

.field public canAutoRenew:Z

.field public description:Ljava/lang/String;

.field public dollarPrice:Ljava/lang/Double;

.field public icon:Ljava/lang/String;

.field public numberOfCoins:I

.field public numberOfMonths:I

.field public price:I

.field public savePercent:I

.field public skuList:[Ljava/lang/String;

.field public suggested:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableDurationInDays()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/narvii/wallet/Product;->numberOfMonths:I

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public getProductPrice(Z)I
    .locals 0

    .line 57
    iget p1, p0, Lcom/narvii/wallet/Product;->price:I

    return p1
.end method

.method public getProductTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public isMembershipPrice(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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
