.class public Lcom/narvii/asset/EmptyAssetHost;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/asset/IAssetHost;


# instance fields
.field emptyAsset:Lcom/narvii/asset/EmptyAsset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/asset/EmptyAsset;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/asset/EmptyAsset;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/asset/EmptyAssetHost;->emptyAsset:Lcom/narvii/asset/EmptyAsset;

    .line 11
    return-void
.end method


# virtual methods
.method public getIAsset()Lcom/narvii/asset/IAsset;
    .locals 1

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
