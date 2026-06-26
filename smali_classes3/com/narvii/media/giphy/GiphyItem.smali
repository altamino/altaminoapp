.class public Lcom/narvii/media/giphy/GiphyItem;
.super Lcom/narvii/model/NVObject;
.source "GiphyItem.java"

# interfaces
.implements Lcom/narvii/media/IEditorSticker;


# instance fields
.field public id:Ljava/lang/String;

.field public images:Lcom/narvii/media/giphy/GiphyImages;

.field public packId:Ljava/lang/String;

.field public stickerStatus:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus:I

    return-void
.end method


# virtual methods
.method public collectionId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    return-object v0
.end method

.method public fullsizeImage(I)Lcom/narvii/media/giphy/GiphyImage;
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyItem;->images:Lcom/narvii/media/giphy/GiphyImages;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/narvii/media/giphy/GiphyImage;

    .line 47
    iget-object v3, v0, Lcom/narvii/media/giphy/GiphyImages;->original:Lcom/narvii/media/giphy/GiphyImage;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_width:Lcom/narvii/media/giphy/GiphyImage;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v5, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_height:Lcom/narvii/media/giphy/GiphyImage;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_width_downsampled:Lcom/narvii/media/giphy/GiphyImage;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_height_downsampled:Lcom/narvii/media/giphy/GiphyImage;

    aput-object v0, v2, v3

    const/4 v0, 0x0

    .line 56
    :goto_0
    array-length v3, v2

    if-ge v4, v3, :cond_3

    .line 57
    aget-object v3, v2, v4

    if-eqz v3, :cond_2

    .line 58
    iget v5, v3, Lcom/narvii/media/giphy/GiphyImage;->size:I

    if-le v5, p1, :cond_1

    goto :goto_1

    :cond_1
    if-le v5, v0, :cond_2

    move-object v1, v3

    move v0, v5

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 64
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyItem;->images:Lcom/narvii/media/giphy/GiphyImages;

    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyImages;->original:Lcom/narvii/media/giphy/GiphyImage;

    :cond_4
    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

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

.method public stickerStatus()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus:I

    return v0
.end method

.method public thumbUrl()Ljava/lang/String;
    .locals 7

    .line 21
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyItem;->images:Lcom/narvii/media/giphy/GiphyImages;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/narvii/media/giphy/GiphyImage;

    .line 24
    iget-object v3, v0, Lcom/narvii/media/giphy/GiphyImages;->original:Lcom/narvii/media/giphy/GiphyImage;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_width:Lcom/narvii/media/giphy/GiphyImage;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v5, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_height:Lcom/narvii/media/giphy/GiphyImage;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_width_downsampled:Lcom/narvii/media/giphy/GiphyImage;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_height_downsampled:Lcom/narvii/media/giphy/GiphyImage;

    aput-object v0, v2, v3

    move-object v0, v1

    const/4 v3, 0x0

    .line 33
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 34
    aget-object v5, v2, v4

    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    .line 35
    iget v6, v5, Lcom/narvii/media/giphy/GiphyImage;->size:I

    if-ge v6, v3, :cond_2

    .line 37
    :cond_1
    iget v0, v5, Lcom/narvii/media/giphy/GiphyImage;->size:I

    move v3, v0

    move-object v0, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    .line 40
    :cond_4
    iget-object v1, v0, Lcom/narvii/media/giphy/GiphyImage;->url:Ljava/lang/String;

    :goto_1
    return-object v1
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
