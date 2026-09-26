.class public Lcom/narvii/media/giphy/GiphyItem;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus:I

    .line 7
    return-void
.end method


# virtual methods
.method public collectionId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    return-object v0
.end method

.method public fullsizeImage(I)Lcom/narvii/media/giphy/GiphyImage;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyItem;->images:Lcom/narvii/media/giphy/GiphyImages;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v2, 0x5

    .line 8
    .line 9
    new-array v3, v2, [Lcom/narvii/media/giphy/GiphyImage;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/narvii/media/giphy/GiphyImages;->original:Lcom/narvii/media/giphy/GiphyImage;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    aput-object v4, v3, v5

    .line 15
    .line 16
    iget-object v4, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_width:Lcom/narvii/media/giphy/GiphyImage;

    .line 17
    const/4 v6, 0x1

    .line 18
    .line 19
    aput-object v4, v3, v6

    .line 20
    const/4 v4, 0x2

    .line 21
    .line 22
    iget-object v6, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_height:Lcom/narvii/media/giphy/GiphyImage;

    .line 23
    .line 24
    aput-object v6, v3, v4

    .line 25
    const/4 v4, 0x3

    .line 26
    .line 27
    iget-object v6, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_width_downsampled:Lcom/narvii/media/giphy/GiphyImage;

    .line 28
    .line 29
    aput-object v6, v3, v4

    .line 30
    const/4 v4, 0x4

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_height_downsampled:Lcom/narvii/media/giphy/GiphyImage;

    .line 33
    .line 34
    aput-object v0, v3, v4

    .line 35
    move v0, v5

    .line 36
    .line 37
    :goto_0
    if-ge v5, v2, :cond_3

    .line 38
    .line 39
    aget-object v4, v3, v5

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iget v6, v4, Lcom/narvii/media/giphy/GiphyImage;->size:I

    .line 44
    .line 45
    if-le v6, p1, :cond_1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    if-le v6, v0, :cond_2

    .line 49
    move-object v1, v4

    .line 50
    move v0, v6

    .line 51
    .line 52
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_3
    if-nez v1, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyItem;->images:Lcom/narvii/media/giphy/GiphyImages;

    .line 58
    .line 59
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyImages;->original:Lcom/narvii/media/giphy/GiphyImage;

    .line 60
    :cond_4
    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

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

    iget v0, p0, Lcom/narvii/media/giphy/GiphyItem;->stickerStatus:I

    return v0
.end method

.method public thumbUrl()Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyItem;->images:Lcom/narvii/media/giphy/GiphyImages;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v2, 0x5

    .line 8
    .line 9
    new-array v3, v2, [Lcom/narvii/media/giphy/GiphyImage;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/narvii/media/giphy/GiphyImages;->original:Lcom/narvii/media/giphy/GiphyImage;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    aput-object v4, v3, v5

    .line 15
    .line 16
    iget-object v4, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_width:Lcom/narvii/media/giphy/GiphyImage;

    .line 17
    const/4 v6, 0x1

    .line 18
    .line 19
    aput-object v4, v3, v6

    .line 20
    const/4 v4, 0x2

    .line 21
    .line 22
    iget-object v6, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_height:Lcom/narvii/media/giphy/GiphyImage;

    .line 23
    .line 24
    aput-object v6, v3, v4

    .line 25
    const/4 v4, 0x3

    .line 26
    .line 27
    iget-object v6, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_width_downsampled:Lcom/narvii/media/giphy/GiphyImage;

    .line 28
    .line 29
    aput-object v6, v3, v4

    .line 30
    const/4 v4, 0x4

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/media/giphy/GiphyImages;->fixed_height_downsampled:Lcom/narvii/media/giphy/GiphyImage;

    .line 33
    .line 34
    aput-object v0, v3, v4

    .line 35
    move-object v4, v1

    .line 36
    move v0, v5

    .line 37
    .line 38
    :goto_0
    if-ge v5, v2, :cond_3

    .line 39
    .line 40
    aget-object v6, v3, v5

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    iget v7, v6, Lcom/narvii/media/giphy/GiphyImage;->size:I

    .line 47
    .line 48
    if-ge v7, v0, :cond_2

    .line 49
    .line 50
    :cond_1
    iget v0, v6, Lcom/narvii/media/giphy/GiphyImage;->size:I

    .line 51
    move-object v4, v6

    .line 52
    .line 53
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_3
    if-nez v4, :cond_4

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_4
    iget-object v1, v4, Lcom/narvii/media/giphy/GiphyImage;->url:Ljava/lang/String;

    .line 60
    :goto_1
    return-object v1
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
