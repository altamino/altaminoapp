.class public Lcom/narvii/asset/NVAsset;
.super Lcom/narvii/model/NVObject;
.source "NVAsset.java"

# interfaces
.implements Lcom/narvii/asset/IAsset;


# instance fields
.field public id:Ljava/lang/String;

.field public isNone:Z

.field public status:I

.field public thumbnailUrl:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverImage()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/asset/NVAsset;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/asset/NVAsset;->url:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/asset/NVAsset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isNone()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/narvii/asset/NVAsset;->isNone:Z

    return v0
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

    .line 40
    iget v0, p0, Lcom/narvii/asset/NVAsset;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
