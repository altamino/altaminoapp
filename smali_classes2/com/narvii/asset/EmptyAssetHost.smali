.class public Lcom/narvii/asset/EmptyAssetHost;
.super Lcom/narvii/model/NVObject;
.source "EmptyAssetHost.java"

# interfaces
.implements Lcom/narvii/asset/IAssetHost;


# instance fields
.field emptyAsset:Lcom/narvii/asset/EmptyAsset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 6
    new-instance v0, Lcom/narvii/asset/EmptyAsset;

    invoke-direct {v0}, Lcom/narvii/asset/EmptyAsset;-><init>()V

    iput-object v0, p0, Lcom/narvii/asset/EmptyAssetHost;->emptyAsset:Lcom/narvii/asset/EmptyAsset;

    return-void
.end method


# virtual methods
.method public getIAsset()Lcom/narvii/asset/IAsset;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/narvii/asset/EmptyAssetHost;->emptyAsset:Lcom/narvii/asset/EmptyAsset;

    return-object v0
.end method

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
