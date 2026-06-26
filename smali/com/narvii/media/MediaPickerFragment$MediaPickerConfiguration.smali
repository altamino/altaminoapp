.class public Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;
.super Ljava/lang/Object;
.source "MediaPickerFragment.java"


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

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1054
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    .line 1055
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minWidth:I

    .line 1056
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minHeight:I

    .line 1057
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifWidth:I

    .line 1058
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifHeight:I

    .line 1060
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    const/16 v1, 0x3e

    .line 1062
    iput v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const/4 v1, 0x0

    .line 1064
    iput-object v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->customOptions:Ljava/util/List;

    .line 1069
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    .line 1071
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryNoCopy:Z

    const/4 v1, 0x3

    .line 1072
    iput v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    const/4 v1, 0x1

    .line 1073
    iput v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    .line 1075
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isYoutubeWithDialog:Z

    .line 1076
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGoogleVideoSearch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z
    .locals 0

    .line 1034
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->hasGalleryPhoto()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z
    .locals 0

    .line 1034
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryPhotoNoGif()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z
    .locals 0

    .line 1034
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->hasGalleryVideo()Z

    move-result p0

    return p0
.end method

.method private hasGalleryPhoto()Z
    .locals 1

    .line 1141
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

    .line 1149
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

    .line 1145
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1079
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 1081
    iput v2, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    .line 1083
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    :cond_1
    and-int/lit16 v0, p1, 0x200

    const/4 v3, 0x2

    if-nez v0, :cond_3

    and-int/lit8 v4, p1, 0x8

    if-nez v4, :cond_2

    .line 1088
    iget v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    :cond_2
    and-int/lit8 v4, p1, 0x10

    if-nez v4, :cond_3

    and-int/lit8 v4, p1, 0x20

    if-nez v4, :cond_3

    .line 1092
    iget v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 1096
    :cond_3
    iput v3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    if-nez v0, :cond_5

    .line 1098
    iget v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 1099
    iget v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    :goto_1
    or-int/2addr v4, v5

    iput v4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    :cond_5
    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_8

    .line 1103
    iget v5, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const/high16 v5, 0x40000

    and-int/2addr v5, p1

    if-eqz v5, :cond_6

    .line 1105
    iput v3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    goto :goto_2

    :cond_6
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-eqz v3, :cond_7

    .line 1107
    iput v2, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    goto :goto_2

    .line 1109
    :cond_7
    iput v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    :cond_8
    :goto_2
    if-nez v4, :cond_a

    .line 1115
    iget v3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    .line 1116
    :goto_3
    iput-boolean v1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isYoutubeWithDialog:Z

    :cond_a
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_c

    const v0, 0x8000

    and-int/2addr v0, p1

    if-nez v0, :cond_b

    .line 1121
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    goto :goto_4

    .line 1123
    :cond_b
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    :cond_c
    :goto_4
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_d

    .line 1128
    iget p1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    :cond_d
    return-void
.end method

.method public setSize(IIII)V
    .locals 0

    .line 1134
    iput p1, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minWidth:I

    .line 1135
    iput p2, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minHeight:I

    .line 1136
    iput p3, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifWidth:I

    .line 1137
    iput p4, p0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifHeight:I

    return-void
.end method
