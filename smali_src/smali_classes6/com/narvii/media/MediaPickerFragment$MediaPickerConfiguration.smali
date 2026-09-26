.class public Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaPickerConfiguration"
.end annotation


# static fields
.field public static final GALLERY_PHOTO_MODE_HAS_GIF:I = 0x1

.field public static final GALLERY_PHOTO_MODE_HAS_LAST_PHOTO:I = 0x2

.field public static final GALLERY_VIDEO_HAS_EDITOR:I = 0x1

.field public static final GALLERY_VIDEO_IS_MULTI:I = 0x2

.field public static final GALLERY_VIDEO_NO_EDITOR:I = 0x0

.field public static final GALLERY_VIDEO_SELECT_WITH_IMAGE:I = 0x4

.field public static final OPTION_AUDIO:I = 0x40

.field public static final OPTION_AUDIO_LOCAL:I = 0x80

.field public static final OPTION_CAMERA:I = 0x2

.field public static final OPTION_COLORPICKER:I = 0x1

.field public static final OPTION_DELETE:I = 0x100

.field public static final OPTION_GALLERY_PHOTO:I = 0x8

.field public static final OPTION_GALLERY_VIDEO:I = 0x10

.field public static final OPTION_GIPHY:I = 0x4

.field public static final OPTION_YOUTUBE:I = 0x20


# instance fields
.field public customOptions:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/media/MediaPickerFragment$Option;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        contentAs = Lcom/narvii/media/MediaPickerFragment$Option;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/media/MediaPickerFragment$Option;",
            ">;"
        }
    .end annotation
.end field

.field public galleryPhotoMode:I

.field public galleryVideoMode:I

.field public isGalleryNoCopy:Z

.field public isGiphySticker:Z

.field public isGoogleVideoSearch:Z

.field public isSingle:Z

.field public isYoutubeWithDialog:Z

.field public maximum:I

.field public minGifHeight:I

.field public minGifWidth:I

.field public minHeight:I

.field public minWidth:I

.field public optionList:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minWidth:I

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minHeight:I

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifWidth:I

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifHeight:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 17
    .line 18
    const/16 v1, 0x3e

    .line 19
    .line 20
    iput v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->customOptions:Ljava/util/List;

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryNoCopy:Z

    .line 28
    const/4 v1, 0x3

    .line 29
    .line 30
    iput v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    iput v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isYoutubeWithDialog:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGoogleVideoSearch:Z

    .line 38
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->hasGalleryPhoto()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->hasGalleryVideo()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryPhotoNoGif()Z

    move-result p0

    return p0
.end method

.method private hasGalleryPhoto()Z
    .locals 1

    iget v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasGalleryVideo()Z
    .locals 1

    iget v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGalleryPhotoNoGif()Z
    .locals 2

    iget v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public setOptionListByFlag(I)V
    .locals 6

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    iput v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    :cond_1
    and-int/lit16 v0, p1, 0x200

    const/4 v3, 0x2

    if-nez v0, :cond_3

    and-int/lit8 v4, p1, 0x8

    if-nez v4, :cond_2

    iget v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    :cond_2
    and-int/lit8 v4, p1, 0x10

    if-nez v4, :cond_3

    and-int/lit8 v4, p1, 0x20

    if-nez v4, :cond_3

    iget v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    :cond_3
    iput v3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    if-nez v0, :cond_5

    iget v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    or-int/2addr v4, v3

    iput v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    :cond_5
    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_8

    iget v5, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const/high16 v5, 0x40000

    and-int/2addr v5, p1

    if-eqz v5, :cond_6

    iput v3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    goto :goto_2

    :cond_6
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-eqz v3, :cond_7

    iput v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    goto :goto_2

    :cond_7
    iput v2, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    :cond_8
    :goto_2
    if-nez v4, :cond_a

    iget v3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    if-eqz v0, :cond_9

    move v1, v2

    :cond_9
    iput-boolean v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isYoutubeWithDialog:Z

    :cond_a
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_c

    const v0, 0x8000

    and-int/2addr v0, p1

    if-nez v0, :cond_b

    iget v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    goto :goto_3

    :cond_b
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    :cond_c
    :goto_3
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    :cond_d
    return-void
.end method

.method public setSize(IIII)V
    .locals 0

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minWidth:I

    iput p2, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minHeight:I

    iput p3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifWidth:I

    iput p4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifHeight:I

    return-void
.end method
