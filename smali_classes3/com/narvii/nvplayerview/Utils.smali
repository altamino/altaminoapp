.class public Lcom/narvii/nvplayerview/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final SHARED_ELEMENT_TRANSITION_SUPPORT_SDK_INT:I = 0x17

.field private static photoManager:Lcom/narvii/photos/PhotoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLocalPhotoRatio(Lcom/narvii/app/NVContext;Ljava/lang/String;)F
    .locals 1

    .line 107
    sget-object v0, Lcom/narvii/nvplayerview/Utils;->photoManager:Lcom/narvii/photos/PhotoManager;

    if-nez v0, :cond_0

    const-string v0, "photo"

    .line 108
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/photos/PhotoManager;

    sput-object p0, Lcom/narvii/nvplayerview/Utils;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 110
    :cond_0
    sget-object p0, Lcom/narvii/nvplayerview/Utils;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 111
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p0, :cond_1

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez p1, :cond_1

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p0, p0, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static getVisibilityHorizontalPercentage(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 41
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 42
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 43
    invoke-static {v2}, Lcom/narvii/nvplayerview/Utils;->viewIsPartiallyHiddenLeft(Landroid/graphics/Rect;)Z

    move-result p0

    const/16 v0, 0x64

    if-eqz p0, :cond_1

    .line 44
    iget p0, v2, Landroid/graphics/Rect;->left:I

    sub-int p0, v1, p0

    mul-int/lit8 p0, p0, 0x64

    div-int/2addr p0, v1

    return p0

    .line 45
    :cond_1
    invoke-static {v2, v1}, Lcom/narvii/nvplayerview/Utils;->viewIsPartiallyHiddenRight(Landroid/graphics/Rect;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 46
    iget p0, v2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 p0, p0, 0x64

    div-int/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getVisibilityPercentage(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 23
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 24
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 25
    invoke-static {v2}, Lcom/narvii/nvplayerview/Utils;->viewIsPartiallyHiddenTop(Landroid/graphics/Rect;)Z

    move-result p0

    const/16 v0, 0x64

    if-eqz p0, :cond_1

    .line 26
    iget p0, v2, Landroid/graphics/Rect;->top:I

    sub-int p0, v1, p0

    mul-int/lit8 p0, p0, 0x64

    div-int/2addr p0, v1

    return p0

    .line 27
    :cond_1
    invoke-static {v2, v1}, Lcom/narvii/nvplayerview/Utils;->viewIsPartiallyHiddenBottom(Landroid/graphics/Rect;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 28
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 p0, p0, 0x64

    div-int/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static predictRatio(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;)F
    .locals 5

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p1, :cond_5

    .line 55
    iget-object v1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v1}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "-"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 61
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 p0, 0x1

    .line 62
    aget-object p0, v2, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    .line 63
    aget-object v1, v2, p1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    array-length v2, v1

    if-ne v2, p1, :cond_5

    const/4 v2, 0x0

    .line 65
    aget-object v3, v1, v2

    const-string v4, "v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    aget-object v3, v1, v2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 68
    :cond_1
    aget-object p1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p0, :cond_5

    if-lez p1, :cond_5

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p0, p0, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :cond_2
    const-string v2, "photo"

    .line 73
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    iget-object v1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 75
    iget-object p1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/Utils;->getLocalPhotoRatio(Lcom/narvii/app/NVContext;Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_3
    return v0

    :cond_4
    const p0, 0x3fe38e39

    return p0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return v0
.end method

.method private static viewIsPartiallyHiddenBottom(Landroid/graphics/Rect;I)Z
    .locals 1

    .line 93
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sub-int/2addr p1, v0

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static viewIsPartiallyHiddenLeft(Landroid/graphics/Rect;)Z
    .locals 0

    .line 97
    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static viewIsPartiallyHiddenRight(Landroid/graphics/Rect;I)Z
    .locals 1

    .line 101
    iget p0, p0, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sub-int/2addr p1, v0

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static viewIsPartiallyHiddenTop(Landroid/graphics/Rect;)Z
    .locals 0

    .line 89
    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
