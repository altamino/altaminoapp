.class public Lcom/narvii/media/giphy/GiphyPack;
.super Lcom/narvii/model/NVObject;
.source "GiphyPack.java"


# instance fields
.field public featured_gif:Lcom/narvii/media/giphy/GiphyItem;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyPack;->id:Ljava/lang/String;

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
